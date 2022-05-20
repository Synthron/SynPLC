# SynPLC

PLC with MicroControllers

**WORK IN PROGRESS**


# To-Dos:

## Repo
 - [x] Rewrite documentation in english
 - [x] add reviewed PCBs
 - [ ] fill out tech specs of modules once programmed
 
## Hardware

 - [x] Order new PCBs with STM32s
 - [x] Assemble new PCBs
 - [ ] Test new hardware

## Software
 - [ ] ~~Write finish software on old hardware~~
 - [ ] Write Software for new PCBs
 - [ ] Porting of SR485 protocol to new hardware
 - [ ] Define and program CAN protocol
 - [ ] Write generalized Code for CPU
 - [ ] ~~define structured Text~~
 - [ ] ~~import structured text ad parse into running code~~

 ## Possible Fixes
 - [ ] MAX485 with 5V supply voltage on all IO modules ?
 - [ ] DIs and DO (alt. switches) re-soldering (dead channels)
 - [ ] better connector for CPU
 - [ ] parametrize RS485 lib a bit more


## issues
 - [ ] weird additional bytes sent by slave after ACK and CS???