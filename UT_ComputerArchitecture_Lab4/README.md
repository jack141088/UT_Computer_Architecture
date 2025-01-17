# UT ComputerArchitecture Lab4
Computer Architecture Lab4

## Introduction
The goal of this lab assignment is to extend the LC-3b simulator you wrote in Lab 3 to handle interrupts and exceptions. You will augment the existing LC-3b microarchitecture to support detection and handling of one type of interrupts (timer) and three types of exceptions (protection, unaligned access, and unknown opcode).

The inputs to this new simulator will be:

A file entitled ucode4 which will hold the expanded microcontrol store.

A file holding an LC-3b user program that will be loaded into memory starting at memory location x3000.

A file holding data for the user program. This data will be loaded into memory starting at memory location xC000.

A file holding the interrupt/exception vector table that will be loaded into memory starting at memory location x0200. You should form the contents of this table based on the vector of each interrupt/exception and starting address of the service routine for each interrupt/exception.

A file holding an LC-3b system program that will be loaded into memory starting at memory location x1200. This will be the timer interrupt service routine.

A file holding an LC-3b system program that will be loaded into memory starting at memory location x1600. This will be the protection exception handler.

A file holding an LC-3b system program that will be loaded into memory starting at memory location x1A00. This will be the unaligned access exception handler.

A file holding an LC-3b system program that will be loaded into memory starting at memory location x1C00. This will be the unknown opcode exception handler.

The simulator will start executing the LC-3b program loaded at x3000. The timer interrupt will occur at cycle 300. You are supposed to provide microarchitectural support for interrupt handling. The interrupt handler you write should increment location (word-sized access) x4000 by 1. You will also need to implement the RTI instruction so that the interrupt handler can transfer control back to the user program.
You will have to provide microarchitectural support for handling exceptions. Most of this support is similar to the support you will add for interrupts. If the user program accesses a memory location that can only be accessed in supervisor mode, a protection exception will occur. The exception service routine you will write should simply halt the machine. If the user program makes an unaligned memory access in either supervisor mode or user mode, an unaligned access exception will occur. The exception service routine again should simply halt the machine. If the user program tries to use an unknown opcode (1010 or 1011), an unknown opcode exception will occur. The exception service routine again should simply halt the machine. (Important note: we should be able to swap out your exception routines with a routine that returns from an exception. Therefore, make sure you implement the exceptions correctly.)

## Usage

### run add.asm
```
./assembly2bin.sh
./run.sh
```

### run test asm
```
./assembly2bin.sh
./test.sh [filename]
```
