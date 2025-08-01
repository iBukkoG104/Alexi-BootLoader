\ Alexi-BootLoader :3
cr

decimal			( Swich to DEC for handling numbers )
\ Fnuny stuff
: TEST	." This, is a bucket."	;
: L1	." ##############"	;
: L2	." ########### ##"	;
: L3	." ########### ##"	;
: L4	." ########### ## "	;
: L5	."  ############  "	;
\ actual stuff
: STAR ( -- )   42 EMIT   ;
: STARS ( n -- )   0 DO  STAR  LOOP   ;
: BOX ( width height -- )   over *			( calculate the area of the box )
		0 DO  dup I swap mod 0= IF  cr  THEN  STAR			( if the index / width != 0 prints a STAR )
  		LOOP  drop   ;

: 1024x768   167 68   ;
: 800x600   132 54   ;
: 640x480   105 43   ;

: WAIT.5   catch 5000 ms   ;
\ OoOoOo scawwy oOoOo
: SELF.DESTRUCT ( -- )   BEGIN  AGAIN   ;
\ Start of code.


\ apparently older macs (pre-G4) lacks of rhe PAGE word
\ I'll have to add a check to see which CPU the computer has
page

TEST cr L1 cr L2 cr L3 cr L4 cr L5 cr
9 1 + .    \ test whenever it's using HEX or DEC

catch 2000 ms
page

1024x768 BOX

WAIT.5

\ End of Code.
