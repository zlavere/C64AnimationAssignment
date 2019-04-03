10 CD=12288: rem start of char data
12 print CHR$(147): REM clear the screen
15 poke 53281,0: rem set background to black
20 gosub 100: rem copy the character data
50 gosub 200: rem switch to multicolor char mode
55 gosub 300: rem point to the new char set
58 gosub 400: rem set the colors
60 gosub 50001: rem draw the graphic
70 end

100 for A=CD+(0*8) to CD+(8*8) step 8: rem start char to end char
110 for I=0 to 7: read B: poke A+I,B: next I: rem copy char data
120 next A
130 return

200 rem switch to multicolor mode
210 poke 53265, peek(53265) and 159
220 poke 53270, peek(53270) or 16
230 return

300 rem point to the new charset
320 rem poke 53272, (peek(53272) and 240)or 28: rem set bits 3-0 to 1111
325 poke 53272, 28
330 return

400 rem set the colors
410 poke 53282,5: rem set the 01 color to green
420 poke 53283,9: rem set the 10 color to white
430 return

50001 REM SCREEN 1 - 
50002 PRINT "{light green}@eea    {pink}@eea    {light blue}@eea"
50003 PRINT "{light green}fhhg    {pink}fhhg    {light blue}fhhg"
50004 PRINT "{light green}fhhg    {pink}fhhg    {light blue}fhhg"
50005 PRINT "{light green}bddc    {pink}bddc    {light blue}bddc"
50006 PRINT " {pink}fg      {light blue}fg      {light gray}fg"
50007 PRINT " {pink}fg      {light blue}fg      {light gray}fg"
50008 PRINT " {pink}fg      {light blue}fg      {light gray}fg"
50009 PRINT "{light green}@eea    @eea    @eea"
50019 return


60000 DATA 002,010,009,041,039,167,159,159 : REM CHARACTER 0
60010 DATA 128,160,096,104,216,218,246,246 : REM CHARACTER 1
60020 DATA 159,159,167,039,041,009,010,002 : REM CHARACTER 2
60030 DATA 246,246,218,216,104,096,160,128 : REM CHARACTER 3
60040 DATA 223,255,247,255,127,255,085,170 : REM CHARACTER 4
60050 DATA 170,085,255,127,255,247,255,223 : REM CHARACTER 5
60060 DATA 159,159,159,159,159,159,159,159 : REM CHARACTER 6
60070 DATA 246,246,246,246,246,246,246,246 : REM CHARACTER 7
60080 DATA 255,125,255,255,223,255,255,247 : REM CHARACTER 8
