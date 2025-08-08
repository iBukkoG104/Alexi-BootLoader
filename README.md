# Alexi-BootLoader
A simple alternative boot-picker for OpenFirmware written in ANS Forth.

## Why am I torturing myself into learning Forth for nothing?
Good question.

I was trying to dualboot Debian 13 'Trixie' and Mac OS X 10.5 on my iBook G4 and for a long time (probably because I formatted my hard drive to support Mac OS Classic for reasons) Mac OS couldn't find the HFS partition made by the Debian installer containing Grub, so whenever I wanted to boot into linux I had to manually boot into OpenFirmware and manually tell it to boot from the Grub partition, and I was getting tired of that.

(and, tbh, because it would be cool telling my CS professor I built a bootloader in Forth).

## TODO:
1. Learing ANS Forth (ongoing);
2. Making a selector for the screen's resolution (640x480 - 800x600 - 1024x786) (ongoing);
3. Making a neat TUI for 1024x786 monitors;
4. Writing the code for detecting CHRP BootX (?) files on HDDs;
5. Same thing but for CDs;
6. Same thing but for USB drives;
7. Same thing but for FireWire drives (don't count on it, I don't have a FW HDD, but I *might* try using another mac in target mode...);
8. Making a neat TUI for 640x480 monitors;
9. Making a neat TUI for 800x600 monitors.
