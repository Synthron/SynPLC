# SynPLC

Open Source modular PLC with Microcontrollers

**WORK IN PROGRESS**

# To-Dos

## Repo

- [x] Rewrite documentation in english
- [x] add reviewed PCBs
- [ ] fill out tech specs of modules once programmed
- [ ] Cleanup Repo
  - [ ] better folder structure
  - [X] delete obsolete files

## Hardware

- [x] Order new PCBs with STM32s
- [x] Assemble new PCBs
- [ ] Test new hardware
  - [X] DO
  - [X] DI
  - [ ] AO
  - [ ] AI
  - [ ] XT
- [ ] New Modules
  - [ ] CPU V2
    - [X] Layout
    - [X] Review
    - [ ] Ordered
  - [ ] Relais Module
  - [ ] PWM Module

## Software

- [ ] Write Software for new PCBs
  - [ ] CPU
  - [ ] DO
  - [ ] DI
  - [ ] AO
  - [ ] AI
  - [ ] XT
- [ ] Porting of SR485 protocol to new hardware
  - [ ] Make it use Interrupts
  - [ ] Make it more efficient (processing)
  - [ ] implement failsafes when no answer
- [ ] Define and program CAN protocol
- [ ] Write generalized Code for CPU
- [ ] ~~define structured Text~~ (postponed)
- [ ] ~~import structured text and parse into running code~~ (postponed)

## Possible Fixes

- [x] ~~MAX485 with 5V supply voltage on all IO modules ?~~
  - changed to 3V3 on the CPU
- [x] DIs and DO (alt. switches) re-soldering (dead channels)
- [x] better connector for CPU
- [ ] parametrize RS485 lib a bit more (tbd)

## issues

- [x] weird additional bytes sent by slave after ACK and CS???
  - resolved
