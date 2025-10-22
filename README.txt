This is a project I had in mind for a while.
Basically I want to build a basic computer/microcontroller-esque thing based around the MOSTek 6502 CPU from 1975.

Current specs:
RAM: 0 bytes (I need to find an SRAM IC :P)
CPU: MOSTek 6502 @ I will figure it out kHz/MHz
ROM: 32KB AMD EPROM I found in an old GPU

Folder contents:
softwarez: The software I will burn on the EPROM for blinking an LED (for now). It's written in 6502 assembly and is assembled using the Merlin32 assembler.

hardwarez: Nothing (yet). I am probably going to include some schematics n stuff in the future however I am now prototyping on a breadboard with random stuff. I need a clock crystal and wires to connect the EPROM to get started.
The CPU breadboard is finnished and p much ready to be powered up with a clock signal. 


Lore:
I initially got my first 6502 CPU back in October of 2024, at 18 years old. Along with it I have also got a Motorola 68000 that I am going to use later as it is a massive chip that I cannot fit on any of my breadboards lol.

So after watching a few youtube videos to see how the 6502 functions, I decided to wire it up on a breadboard.
It was very basic. Basically applying voltage to the CPU along with hard-wiring the NMI and ready pin to not mess with the processor, along with adding basic circuity for the reset logic, consisting of a resistor and a button lol xD.

I also added a couple of LEDs to the address line and hardwired a NOP program to the data lines of the pin (exactly 1 byte long and made out of resistors).

After writing a basic program on an Arduino to simulate an oscilator circuit and wiring it to the CPU's clock pin and pressing the reset key, the CPU springed to life. I was ecstatic!!! :D

But then I got busy with other stuff so I suspended the 6502 project for later to focus on my first year of college and stuff (it was rough).

Then, almost a whole-ass year later, I found an EPROM from an old PCI graphics adapter, I ripped it out to have a look at the die, and then I remembered the 6502 I had and decided to get back to work on it.

I started making a concept for an EPROM burner with an ESP32 bcuz I am a broke Romanian Gen Z that can't get access to an Apple II with an EPROM card. So I have to make do with some of the modern stuff I have. (Eww, I know).

I am still in the process of aquiring parts and bits for stuff like the flasher, oscilator circuit and even the computer itself so stay tuned

In the meantime I decided to get myself a 6502 assembler that works on Linux. So I decided to go with Merlin32. A continuation of the Merlin assember for the Apple II. It does the job, nicely :D Although it was a pain to figure out how to use the darn thing at the beginning tho ngl :\. But I decided to code a simple LED blink program that is entirely dependent on the 6502's inner registers for delays and stuff. No timers, no C code, no BS. And this is what I got.

Stay tuned for more! I appreciate you reading 'till the end. Thanks! :D
