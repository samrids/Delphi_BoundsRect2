unit Unit1;

{
  Delphi code stuff:
  How to put a Label1 between 2 TPanel
}
interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    PanelA: TPanel;
    PanelB: TPanel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  Label1: TLabel;
begin
  Label1 := TLabel.Create(Self);
  Label1.Caption := format('%s', [formatdatetime('dd-mm-yyyy', Date)]);
  Label1.AutoSize := True;
  Label1.Transparent := True;
  Label1.Parent := Self;
  Label1.Update;
  Label1.Top := PanelA.BoundsRect.Top - 2 +
    ((PanelA.BoundsRect.Bottom - PanelA.BoundsRect.Top) - Label1.Height) div 2;
  Label1.Left := PanelA.BoundsRect.Right +
    (((PanelB.BoundsRect.Left - PanelA.BoundsRect.Right) - Label1.Width) div 2);
end;

end.
