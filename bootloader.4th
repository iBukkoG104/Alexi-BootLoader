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
: SELF.DESTRUCT ( -- )   BEGIN  AGAIN   ;
\ Start of code.

page

TEST cr L1 cr L2 cr L3 cr L4 cr L5 cr
9 1 + .    \ test whenever it's using HEX or DEC

100000 0 DO  100 100 *  drop  LOOP			\ waste a few CPU cycles just for fun
page

167 68 BOX

SELF.DESTRUCT			( WARNING: THIS WILL HANG YOUR MAC INDEFINITELLY, MANUALLY SHUTDOWN AND RESTART THE MACHINE. )

\ End of Code.
