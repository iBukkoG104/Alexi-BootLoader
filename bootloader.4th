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

\ Variables
variable RESOLUTION

\ actual stuff
: 1024x768   167 68   ;			( Setting no. 1 )
: 800x600   132 54   ;			( Setting no. 2 )
: 640x480   105 43   ;			( Setting no. 3 )

: STAR ( -- )   42 EMIT   ;
: STARS ( n -- )   0 DO  STAR  LOOP   ;
: BOX ( width height -- )   over *			( calculate the area of the box )
		0 DO  dup I swap mod 0= IF  cr  THEN  STAR			( if the index / width != 0 prints a STAR )
  		LOOP  drop   ;
: RES ( -- )   cr ." Select resolution: 1. (1024x768) | 2. (800x600) | 3. (640x480) "   ;
: ANSWER? ( n -- n.ascii )   cr  ." > "  key  RESOLUTION !   ;
: CONVERT.ANSWER ( n.ascii -- n )
		dup 49 = IF  1 RESOLUTION !  ELSE
		dup 50 = IF  2 RESOLUTION !  ELSE
		dup 51 = IF  3 RESOLUTION !
		THEN THEN THEN  drop   ;
: CHECK.RES ( n -- resolution )
		dup 1 = IF  1024x768  ELSE
		dup 2 = IF  800x600  ELSE
		3 = IF  640x480
		THEN THEN THEN     ;

: WAIT.5   catch 5000 ms   ;
\ OoOoOo scawwy oOoOo
: SELF.DESTRUCT ( -- )   BEGIN  AGAIN   ;


\ Start of code.

RES  ANSWER?  RESOLUTION @  CONVERT.ANSWER

\ apparently older macs (pre-G4) lacks of rhe PAGE word
\ I'll have to add a check to see which CPU the computer has
page

TEST cr L1 cr L2 cr L3 cr L4 cr L5 cr
9 1 + .    \ test whenever it's using HEX or DEC
cr RESOLUTION ? 

catch 2000 ms
page

RESOLUTION @ CHECK.RES BOX drop

WAIT.5

\ End of Code.
