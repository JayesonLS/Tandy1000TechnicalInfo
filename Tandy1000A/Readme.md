Material Specific to the Tandy 1000A (25-1000A)
===============================================

**UPDATE:** _The service manual supplement has (mostly) turned up since starting this
project. Most information here will be redundant. See
[Archive.org](https://archive.org/details/tandy-1000-a-service-manual-supplement)_

The 1000A is a revised version of the original Tandy 1000. The primary difference is a
substantially changed mainboard.

Custom ICs
----------

Compared to the original Tandy 1000, the 1000A reduces IC count by consolidating a number of 
off-the-shelf ICs into fewer, custom ICs. The 1000A board has none of the following IC's present: 
8244A program IO, 8284A clock generator, MC6845 CRT controller or four 82S153 PALs. It adds three
custom ICs: U9, U25 and U64.

**U9, TACO111/3A-2125-BB/8079012** is a custom 40 pin DIP IC. It combines the functionality of the
8255A program IO; discrete keyboard control and shift register logic; and, some of the discrete
floppy drive controller support logic. For the pins checked so far, the pinout is identical to the Tandy 
8075069 "Keyboard Interface" documented in the Tandy 1000 SX technical reference manual.

**U25, VC2578/8079011** is a custom 40 pin DIP IC. It combines the functionality of the 8284A clock
generator, U46 System Timing Synthesizer PAL and other discrete control/timing logic. Functionalty
appears to be similar to the documented timing control generator used int the 1000 SX. Pinout is
however very different. Like the timing control in the SX, U25 no longer makes use of the CPU's SS0*
or ALE signals, and now makes use of the CPU's DEN* signal. Similarly, the CPU's INTA* signal is no
longer used, with the INTA* signal for the 8259A interrupt controler now being generated by U25.
CPU RD* is no longer used to set the direction of the bus transciever, instead being controlled by U25.
BREQ* is now routed to U25, whereas before it was only routed to HOLD on the CPU (unknown if CPU HOLD
is still connected somewhere). Differing from the SX, U25 does not generate clocks derieved from a
16/8MHz source. There is instead an 8MHz crystal located amongst the floppy drive logic. U25 generates
the CAS* and RAS* signals, whereas on the SX, video RAM CAS* and RAS* are generated by the Big Blue IC.
 
**U64, VC2554/8079010** is a custom PLCC IC. It includes functionality of U53 Memory Address Decode PAL.
Other functionality is not known. It is worth noting that functionality for U80 Main I/O Address 
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
Where possible, signal matching the original Tandy 1000 schematic have been used. New symbols are
prefixed with an underscore. Circuit and custom pinouts determined by comparison with original Tandy
1000 mainboard; referencing the technical reference manuals for the original Tandy 1000 and the
Tandy 1000 SX for clues; and, a great deal of probing with multimeter and oscilloscope.

[Latest schematic PDF](Schematic/Tandy1000A.pdf)

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
| U114             | 8253                         | U8           | 8532                       | Timer                |
| -                | -                            | U25          | VC2578/8079011             | Custom               |
| U101             | 8255A                        | -            | -                          | Program IO           |
| -                | -                            | U9           | TACO111/3A-2125-BB/8079012 | Custom               |
| U45              | 8284A                        | -            | -                          | Clock generator      |
| U46/U103/U53/U80 | 82S153 blue/red/white/orange | -            | -                          | Programmable logic   |
| -                | -                            | U64          | VC2554/8079010             | Custom PLCC          |
| U88              | MC6845                       | -            | -                          | CRT controller       |
| U76              | NCR-609-0380093/8079000      | U50          | NCR 604-0380300/80790001   | Custom video array   |
| U108             | 3A-2084/8041087              | U66          | 3A-2084/8041087            | Custom gate array    |
| U69              | WD9216                       | U5           | WD9216                     | FDC data separator   |
| U52              | R6765P                       | U43          | VL6765-04PC                | 8782 FDC             |
