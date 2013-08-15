unit init;

{***************************
   Initialization unit for IronSeed

   Channel 7
   Destiny: Virtual


   Copyright 1994

***************************}

interface

implementation

uses dos;

procedure ovrerrhandler(err: integer);
var s: string;
begin
// case err of
//  -1: s:='Overlay Manager Error.';
//  -3: s:='Insufficient Memory.';
//  -5: s:='No EMS Found.';
//  -6: s:='Insufficient EMS Memory.';
//  else s:='Unknown Error.';
 //end;
 //writeln('Overlay Error: '+s);
// halt(4);
end;

procedure initialize;
var ovrerr,i,j: integer;
begin
 //ovrinit(paramstr(0));
 //ovrerr:=ovrresult;
 //if ovrerr<>0 then ovrerrhandler(ovrerr);
 //ovrsetretry(ovrgetbuf div 3);
 //ovrinitems;
 //i:=ovrresult;
end;

begin
 initialize;
end.
