library MyDll;


uses
  SysUtils,
  Classes,
  Dialogs;

{$R *.RES}

FUNCTION DllTest():Integer;StdCall;
var Name : string;
 begin
  Name := InputBox('I am inside a Delphi DLL','What is your name','');
  If Length(Name)=0 then
  Begin
    Result := 0;
    Exit;
    End
  Else
   Begin
    Result := 1;
    ShowMessage('Hello ' + Name);
   End;
end;

  EXPORTS
  DllTest;
  

begin


end.
 