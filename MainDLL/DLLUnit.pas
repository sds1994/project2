unit DLLUnit;

interface

uses
Vcl.Dialogs;

implementation

procedure A;
begin
  ShowMessage('A is Called');
end;

exports
  A;

end.
