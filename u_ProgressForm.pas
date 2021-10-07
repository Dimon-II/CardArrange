unit u_ProgressForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TProgressForm = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Panel2: TPanel;
    imgProgress: TImage;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    w,h:Integer;
  public
    { Public declarations }
    procedure CircXY(x,y:Integer;c:Tcolor);
    procedure DrawXY(x,y:Integer;c:Tcolor);
    procedure Init(aw,ah:Integer);
  end;

var
  ProgressForm: TProgressForm;

implementation

uses u_MainForm;

{$R *.dfm}

procedure TProgressForm.Button1Click(Sender: TObject);
begin
  MainForm.Stop := True;
  Abort;
end;

procedure TProgressForm.DrawXY(x, y:Integer; c: Tcolor);
begin
  if  imgProgress.Picture.Bitmap.Canvas.Pixels[Round(x*imgProgress.Width/w), Round(y*imgProgress.Height/h)] <> c then
  begin
   imgProgress.Picture.Bitmap.Canvas.Pixels[Round(x*imgProgress.Width/w), Round(y*imgProgress.Height/h)] := c;

  Application.ProcessMessages;
  end;
end;

procedure TProgressForm.FormCreate(Sender: TObject);
begin
  imgProgress.Picture.Bitmap.Width := 400;
  imgProgress.Picture.Bitmap.Height := 400;
  imgProgress.Picture.Bitmap.Canvas.Brush.Color := clWhite;
  imgProgress.Picture.Bitmap.Canvas.Rectangle(0,0,400,400);
end;

procedure TProgressForm.Init(aw, ah: Integer);
begin
  Self.w := aw;
  Self.h := ah;

  if w > h then begin
     Height := Height - round(400 * (1-h/w))
  end
  else begin
     Width := Width - round(400 * (1-w/h))

  end;
  imgProgress.Picture.Bitmap.Canvas.Rectangle(0,0,imgProgress.Width,imgProgress.Height);
end;

procedure TProgressForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MainForm.Stop := True;
  Abort;
end;

procedure TProgressForm.CircXY(x, y: Integer; c: Tcolor);
begin
     ProgressForm.imgProgress.Picture.Bitmap.Canvas.Pen.Color := c;
     ProgressForm.imgProgress.Picture.Bitmap.Canvas.Pen.Style :=psDot;
     imgProgress.Picture.Bitmap.Canvas.Ellipse(
     Round(x*imgProgress.Width/w)-10,
     Round(y*imgProgress.Height/h)-10,
     Round(x*imgProgress.Width/w)+10,
     Round(y*imgProgress.Height/h)+10)

end;

end.
