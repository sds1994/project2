unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMain = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

procedure A ; stdcall; external 'D:\Delphi Practicals\Delphi-Practice\MainDLL\Win32\Debug\DLLProject.dll';

implementation

{$R *.dfm}

procedure TMain.Button1Click(Sender: TObject);
begin
  A;
end;

end.
