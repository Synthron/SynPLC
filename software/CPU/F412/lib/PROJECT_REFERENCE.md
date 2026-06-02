# STM32F412 Industrial Control System - Reference Notes

> Source migration: content moved from [`.github/copilot-instructions.md`](.github/copilot-instructions.md) for broader AI-agent discoverability.

## Project Overview

This is an **STM32F412-based embedded control system** for synplc (a programmable logic controller platform). It manages industrial I/O through multiple communication protocols and peripherals. The project is STM32CubeMX-generated with manual user code extensions.

## Key Architecture

### Generated Code Protection
- **All peripheral init functions are STM32CubeMX-generated** - Do NOT modify `MX_*_Init()` functions
- User code must go inside `/* USER CODE BEGIN/END */` markers only
- `.ioc` file (CubeMX project) is the source of truth for pin/peripheral config
- Run STM32CubeMX (`stm32pio.ini` config) → PlatformIO rebuild when changing peripherals

### Peripheral Hierarchy

**Active Peripherals** (initialized in [`Src/main.c`](Src/main.c)):
- **CAN1**: Primary communication - 1Mbps protocol (PB8/PB9)
- **UART1/UART2**: RS-485 protocols via `send_485()` function
- **Timers**: TIM1-5, TIM8-9, TIM12 - likely PWM/timing for I/O
- **I2C1, SPI2**: Secondary peripherals
- **USB Device**: CDC interface
- **GPIO**: LED indicators (LED_BOOT during init, LED_RUN when running, LED_HEARTBEAT at 1Hz, LED_ERROR on faults, LED_FLASH during transmission), RS485 direction control

**Inactive Peripherals** (commented out):
- RTC, SDIO/SD, FatFS - available but not currently used

### Data Flows (currently debug only)

1. **RS-485 Protocol** (main control interface):
   - Protocol: Custom 5-byte frames with XOR checksum
   - Example: `{0x5A, CMD, ADDR, DATA, CHECKSUM}`
   - Checksum: `byte0 ^ byte1 ^ byte2 ^ byte3 ^ 0xC5`
   - Commands: Read DI (0x03/0x10), Write DO (0x21/0x21), Analog Out (0x60+ch)

2. **CAN Bus** (inter-module communication):
   - 500kbps, interrupt-driven (CAN1_RX0_IRQn)
   - Configuration in [`Src/can.c`](Src/can.c)

3. **Analog Output Loop** (in [`Src/main.c`](Src/main.c)):
   - Uses `synplc_write_analog_output()` library function
   - 4 channels (0x64-0x67), 16-bit values
   - Increments 0→10000 range continuously for testing

## Critical Developer Patterns

### 1. Hardware Initialization Order
```c
HAL_Init() → SystemClock_Config() → PeriphCommonClock_Config() →
MX_GPIO_Init() → MX_*_Init() for each peripheral → User code in main()
```
Never call peripheral init twice or in wrong order.

### 2. RS-485 Communication Pattern
All serial commands use this pattern:
```c
uint8_t data[5] = {0x5A, cmd, addr, value, 0};
data[4] = data[0] ^ data[1] ^ data[2] ^ data[3] ^ 0xC5;  // XOR checksum
send_485(data, 5);
HAL_UART_Receive(&huart1, response, 2, timeout_ms);
```
Direction control: set RS485_DIR_Pin LOW for receive, HIGH for transmit.

### 3. Delay Implementation
- **Use `delay_us()`** for microsecond delays in user code (defined in main.c USER CODE)
- Use `HAL_Delay()` for millisecond delays (blocks, but acceptable in main loop)

### 4. LED Status Indicators
- **LED_BOOT**: Active (high) during initialization, turns off when main loop starts
- **LED_RUN**: Active (high) when PLC main loop is running, low when stopped/paused
- **LED_HEARTBEAT**: 1Hz pulse using `HAL_GetTick()` timing in main loop (not timer-based)
- **LED_ERROR**: 2Hz blinking for 5 seconds on communication/other non-halting errors
- **LED_FLASH**:
  - Before Main Execution: ON during internal runtime code update from external source (yet to be implemented)
  - During Main Execution: ON during RS485 transmission, OFF during reception (extend to CAN when implemented)
- Use `HAL_GPIO_WritePin()` for direct control, `HAL_GPIO_TogglePin()` for toggling

### 5. SynPLC CPU Communication Library
High-level library for IO module communication:
- **Files**: [`Src/synplc_cpu.c`](Src/synplc_cpu.c), [`Inc/synplc_cpu.h`](Inc/synplc_cpu.h)
- **Functions**: `synplc_write_analog_output()`, `synplc_read_digital_input()`, etc.
- **Error handling**: Automatic timeout and checksum validation
- **LED integration**: Uses LED_FLASH for transmission indication

Check [`Inc/synplc_cpu.h`](Inc/synplc_cpu.h) for complete API reference.

### 6. Timer-Driven Tasks
Multiple timers enabled - likely used for:
- PWM control of motor/valve outputs
- Input sampling timing
- CAN transmission scheduling

Check [`Inc/tim.h`](Inc/tim.h) and [`Src/tim.c`](Src/tim.c) for current configurations.

## Build & Debug Workflow

### PlatformIO Commands
```bash
# Build
pio run -e genericSTM32F412RE

# Flash with ST-Link
pio run -e genericSTM32F412RE --target upload

# Debug session
pio debug -e genericSTM32F412RE
```

### Regenerating from CubeMX
If changing hardware config:
```bash
# Edit CPU.ioc in STM32CubeMX, then:
stm32pio generate  # Regenerates Src/Inc files
# Merge any generated changes with your USER CODE sections
pio run           # Rebuild
```

### Upload Recovery
[`reset_after_upload.py`](reset_after_upload.py) - Auto-resets device after flashing via ST-Link.

## File Organization

| Location | Purpose |
|----------|---------|
| [`Src/main.c`](Src/main.c) | Main loop, I/O polling, RS-485 control sequences |
| [`Src/can.c`](Src/can.c), [`Inc/can.h`](Inc/can.h) | CAN1 peripheral setup (interrupt-driven) |
| [`Src/usart.c`](Src/usart.c), [`Inc/usart.h`](Inc/usart.h) | UART1/UART2 config (1MHz, 1M baud UART1) |
| [`Src/gpio.c`](Src/gpio.c) | Pin mappings, direction control |
| [`Src/tim.c`](Src/tim.c) | Timer configurations (PWM timing) |
| [`Src/fatfs.c`](Src/fatfs.c) | FatFS (unused, keep for future SD support) |

## Common Modifications

**Adding a new CAN message handler:**
- Look for `CAN1_RX0_IRQHandler` in [`Inc/stm32f4xx_it.h`](Inc/stm32f4xx_it.h) → add parsing logic

**Adding RS-485 command:**
- Create new 5-byte frame in main loop, compute XOR checksum, call `send_485()`
- Increase `HAL_UART_Receive()` timeout if response is slow

**Changing timer frequency:**
- Edit [`Src/tim.c`](Src/tim.c) (`MX_TIM*_Init`), recalculate prescaler/period for desired frequency
- Regenerate from CubeMX if needed to preserve clock config

**Debugging serial data:**
- Use breakpoints in `send_485()` and `HAL_UART_Receive()` callbacks
- Check RS485_DIR_Pin toggle timing (5-byte frames need 5+ms at 1M baud)

## Embedded-Specific Gotchas

1. **Stack overflow**: This STM32F412 has limited RAM (256KB). Avoid large local arrays; use global buffers.
2. **Interrupt priorities**: CAN1_RX0 set to priority 0 (highest). Don't block in ISRs.
3. **Floating point**: STM32F412 has no FPU - avoid float/double unless necessary.
4. **Unused includes**: FatFS, RTC, SDIO headers exist but disabled in main() - don't add new deps without checking RAM.
5. **Baud rate**: UART1 is 1Mbps (unusual) - verify timing for any RS-485 protocol changes.
