Material Specific to the Tandy 1000 (25-1000A)
==============================================

The 1000A is a revised version of the original Tandy 1000. The primary difference is a
substantially changed mainboard.

Custom ICs
----------

Compared to the original Tandy 1000, the 1000A reduces IC count by consolidating a number of 
off-the-shelf ICs into fewer, custom ICs. The 1000A board has none of the following IC's present: 
8244A program IO, 8284A clock generator, MC6845 CRT controller or four 82S153 PALs. It adds three
custom ICs: U9, U25 and U64.

U9, TACO111/3A-2125-BB/8079012 is a custom 40 pin DIP IC combining the functionality of the 8255A 
program IO, discrete keyboard control and shift register logic and some discrete floppy drive 
controller support logic. For the pins checked so far, the pinout is identical to the Tandy 
8075069 "Keyboard Interface" documented in the Tandy 1000 SX technical reference manual.

U25, VC2578/8079011 is a custom 40 pin DIP IC combining the functionality of the 8284A clock generator,
U46 System Timing Synthesizer PAL and other discrete control/timing logic. Unfortunately the pinout 
appears to be very different from the timing control generator used in the 1000 SX.

U64, VC2554/8079010 is a custom PLCC IC. It includes functionality of U53 Memory Address Decode PAL.
Other functionality is not known. It is worth noting that functionality for the U80 Main I/O Address 
Code PAL, U103 Video Address Decode and MC6845 CRT controller are otherwise unaccounted for. 

Other Differences
-----------------

* Component identifier symbols on the mainboard are completely different. 
* The 1000A board removes the second ROM socket and adds an 8087 math coprocessor socket.
* The 1000A board contains a potentiometer on the main board which appears to be for volume control.
  Its function has not been confirmed.

Schematic
---------
The Schematic folder contains a KiCad project with partial schematic of the Tandy 1000A mainboard. 
Circuit and custom pinouts determined by comparison with original Tandy 1000 mainboard and referencing 
the technical reference manuals for the original Tandy 1000 and the Tandy 1000 SX for clues.

IC Component Symbols Comparison
-------------------------------

This is a partial table comparing component identifying symbols between the 1000/1000A.

| 1000 Symbol      | 1000 Part #                  | 1000A Symbol | 1000A Part #               | Description          |
| ---------------- | ---------------------------- | ------------ | -------------------------- | -------------------- |
| U64              | 8088                         | U28          | 8088                       | CPU                  |
| U63              | 8259                         | U17          | 8259                       | Interrupt controller |
| -                | -                            | U29          | 8087 socket                | Math co pro          |
| U9               | ROM                          | U51          | ROM                        | BIOS ROM             |
| U10              | ROM socket                   | -            | -                          | Extra ROM socket     |
| U114             | 8253                         | U8           | 8352                       | Timer                |
| -                | -                            | U64          | VC2554/8079010             | Custom PLCC          |
| -                | -                            | U25          | VC2578/8079011             | Custom               |
| U101             | 8255A                        | -            | -                          | Program IO           |
| U45              | 8284A                        | -            | -                          | Clock generator      |
| U46/U103/U53/U80 | 82S153 blue/red/white/orange | -            | -                          | Programmable logic   |
| U108             | 3A-2084/8041087              | U66          | 3A-2084/8041087            | Custom gate array    |
| U88              | MC6845                       | -            | -                          | CRT controller       |
| U76              | NCR-609-0380093/8079000      | U50          | NCR 604-0380300/80790001   | Custom video array   |
| U69              | WD9216                       | U5           | WD9216                     | FDC data separator   |
| U52              | R6765P                       | U43          | VL6765-04PC                | 8782 FDC             |
| -                | -                            | U9           | TACO111/3A-2125-BB/8079012 | Custom               |
