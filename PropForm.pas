unit PropForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TprForm = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    res:string;

  end;

var
  prForm: TprForm;

implementation

{$R *.dfm}

procedure TprForm.Edit1Change(Sender: TObject);
begin
  res := Edit1.Text;
end;

end.
