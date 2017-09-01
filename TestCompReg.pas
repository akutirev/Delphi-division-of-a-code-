unit TestCompReg;

interface

uses ButtonTest, Classes, DesignIntf, DesignEditors, Vcl.Dialogs, PropForm;

type
  TMyProperty = class (TStringProperty)
    function GetAttributes: TPropertyAttributes; override;
    function GetValue : String; override;
    procedure Edit; override;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('MyComponents', [TButtonTest]);
  RegisterPropertyEditor(TypeInfo(string), TButtonTest, 'StrTest', TMyProperty);
end;

{ TMyProperty }

procedure TMyProperty.Edit;
var prForm:TprForm;
begin
//  inherited;
//  ShowMessage('ok');
  prForm := TprForm.Create(nil);
  try
    prForm.ShowModal;
    Value:= prForm.res;
  finally
    prForm.Free;
  end;
end;

function TMyProperty.GetAttributes: TPropertyAttributes;
begin
  Result := inherited GetAttributes + [paDialog,
  paReadOnly];
end;

function TMyProperty.GetValue: String;
begin
  result:=inherited GetValue;
end;

end.
