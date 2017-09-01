unit ButtonTest;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls;

type
  TButtonTest = class(TButton)
  private
    { Private declarations }
    FStrTest:string;

  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
    property StrTest:string read FStrTest write FStrTest;

  end;

implementation

end.
