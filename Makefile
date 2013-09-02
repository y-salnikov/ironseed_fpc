compiler:= fpc
c_compiler:= gcc
flags:= -Mtp -g -Aas -a 
p_link:=-k-lSDL_mixer -k-lSDL -k-lm -k-lGL -k-lGLU
cflags:= -O2 -g 
includes=`sdl-config --cflags` -I /usr/X11R6/include
libdir=`sdl-config --libs` -L /usr/X11R6/lib 
link:= -lSDL_mixer -lm -lGL -lGLU

target:=


all:	is

is:	 crewgen intro main
		$(compiler) $(flags)  is.pas

intro:
	$(c_compiler) $(includes) $(libdir) $(cflags)  $(link) -c c_utils.c
#	$(compiler) $(flags) utils_
	$(compiler) $(flags) $(p_link) intro.pas

crewgen:
		$(c_compiler) $(includes) $(libdir) $(cflags) $(link) -c c_utils.c
		$(compiler) $(flags)  $(p_link) crewgen.pas

main:
		$(c_compiler) $(includes) $(libdir) $(cflags) $(link) -c c_utils.c
		$(compiler) $(flags)  $(p_link) main.pas


clean:
	rm -f intro crewgen is main *.o *.ppu *.s
