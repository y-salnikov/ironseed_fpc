Unit utils_;

{$L c_utils.o}

Interface

 type
 screentype= array[0..199,0..319] of byte;
 paltype=array[0..255,1..3] of byte;
const
	Pan_Surround=0;
	xorput=1;
	copyput=0;






procedure delay(MS:Word); cdecl ; external;
procedure setcolor(Color: Word); cdecl ; external;
procedure rectangle(x1: SmallInt; y1:SmallInt; x2: SmallInt; y2:SmallInt);cdecl ; external;
procedure circle(x,y,r:word); cdecl ; external;
procedure vgadriver; 
procedure mymove2(var src,tar; count: integer); 
//procedure move(var src,tar; count: word); 
procedure SDL_init_video(scr:screentype); cdecl ; external;
procedure setrgb256(palnum,r,g,b: byte); cdecl ; external; // set palette
procedure getrgb256(palnum: byte; var r,g,b:byte); // get palette 
procedure set256Colors(pal: paltype); cdecl ; external; // set all palette
procedure stop_video_thread; cdecl ; external;
procedure upscroll(img:screentype);cdecl ; external;
procedure scale_img(x0s, y0s, widths, heights, x0d, y0d, widthd, heightd: word; s, d:screentype);cdecl ; external;
function fastkeypressed: boolean;   // not so fast anymore
function key_pressed : byte;cdecl ; external;
function readkey : char;cdecl ; external;
function readkey_raw : char;cdecl ; external;
procedure all_done;cdecl ; external;
procedure closegraph;   // close video
procedure move_mouse(x,y:word);cdecl ; external;
procedure setfillstyle(style:word;color:word);cdecl ; external;
procedure bar(x1: word; y1:word; x2: word; y2:word);cdecl ; external;
procedure line(x1: word; y1:word; x2: word; y2:word);cdecl ; external;
procedure lineto(x1: word; y1:word);cdecl ; external;
procedure moveto(x1: word; y1:word);cdecl ; external;
procedure pieslice(x1,y1,phi0,phi1,r: word);cdecl ; external;
procedure setwritemode(mode: Word); cdecl ; external;
implementation

uses sysutils;

procedure getrgb256_(palnum: byte; r,g,b: pointer);  cdecl ; external;// get palette 
procedure memmove_wrapper(var src; var dst; n:integer); cdecl ; external;

procedure closegraph;   // close video
begin
    all_done;
//    SDL_Quit();
    
end;
procedure getrgb256(palnum: byte; var r,g,b:byte); // get palette
var rp,gp,bp:byte;
begin
	getrgb256_(palnum,@rp,@gp,@bp);
	r:=rp; g:=gp; b:=bp;
end;

function fastkeypressed: boolean;   // not so fast anymore
begin
 fastkeypressed:=boolean(key_pressed);
end;


procedure vgadriver; 
begin
end;
procedure mymove2(var src,tar; count: integer);
begin
	//memmove_wrapper(tar,src,count*4);
	move(src,tar,count*4);
end;


begin

end.

