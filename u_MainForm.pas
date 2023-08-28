unit u_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, Buttons, StdCtrls, Spin, ExtDlgs, Grids,
  ToolWin, ImgList, ActnList,pngimage, AppEvnts,GDIPOBJ, GDIPAPI, Menus,
  System.Actions, System.ImageList;

type
  TMainForm = class(TForm)
    pcMain: TPageControl;
    tsSource: TTabSheet;
    tsResult: TTabSheet;
    pnRight: TPanel;
    pnParams: TPanel;
    pnXY: TPanel;
    ScrollBox1: TScrollBox;
    imgSource: TImage;
    ScrollBox2: TScrollBox;
    imgResult: TImage;
    gbFile: TGroupBox;
    gbDimension: TGroupBox;
    OpenPictureDialog1: TOpenPictureDialog;
    SavePictureDialog1: TSavePictureDialog;
    Bevel1: TBevel;
    lblX: TLabel;
    lblY: TLabel;
    lblSize: TLabel;
    seSizeY: TSpinEdit;
    seSizeX: TSpinEdit;
    lblDelta: TLabel;
    seDeltaX: TSpinEdit;
    seDeltaY: TSpinEdit;
    lblCount: TLabel;
    seCountX: TSpinEdit;
    seCountY: TSpinEdit;
    gbResult: TGroupBox;
    lblBorder: TLabel;
    seBorder: TSpinEdit;
    shFrameColor: TShape;
    sbFrameColor: TPanel;
    GroupBox1: TGroupBox;
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    Panel1: TPanel;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    ToolButton7: TToolButton;
    sgCards: TStringGrid;
    ToolButton8: TToolButton;
    chbRoundRect: TCheckBox;
    Timer1: TTimer;
    tsBuffer: TTabSheet;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    ScrollBox3: TScrollBox;
    imgBuffer: TImage;
    lblDir: TLabel;
    lblFile: TLabel;
    Label1: TLabel;
    seFrameX: TSpinEdit;
    seFrameY: TSpinEdit;
    chbCuttingLine: TCheckBox;
    lblInterval: TLabel;
    seInterval: TSpinEdit;
    Label2: TLabel;
    lblDPI: TLabel;
    chkHex: TCheckBox;
    tsSelected: TTabSheet;
    ScrollBox4: TScrollBox;
    img1: TImage;
    Shape1: TShape;
    img2: TImage;
    ApplicationEvents1: TApplicationEvents;
    Label3: TLabel;
    chbSplit: TCheckBox;
    chbMirror: TCheckBox;
    seDPI: TSpinEdit;
    FrameBox: TPaintBox;
    Shape2: TShape;
    imgPreview: TImage;
    Action7: TAction;
    Action8: TAction;
    Panel3: TPanel;
    chbCorners: TCheckBox;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    chbDimension: TCheckBox;
    chbResult: TCheckBox;
    ToolBar3: TToolBar;
    tbtLoad: TToolButton;
    tbtSaveIni: TToolButton;
    tbtRotate: TToolButton;
    tbtSave: TToolButton;
    ToolButton27: TToolButton;
    tbtSplit: TToolButton;
    seShift: TSpinEdit;
    SpeedButton1: TSpeedButton;
    PageScroller1: TPageScroller;
    Panel5: TPanel;
    TrackBar3: TTrackBar;
    cbFrameOrGround: TComboBox;
    Panel2: TPanel;
    ColorBox1: TColorBox;
    ColorBox2: TColorBox;
    Panel4: TPanel;
    cbAnchor: TComboBox;
    ToolBar2: TToolBar;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton19: TToolButton;
    ToolButton18: TToolButton;
    ToolButton17: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton21: TToolButton;
    tbHideLines: TToolButton;
    tbOnecard: TToolButton;
    ToolButton20: TToolButton;
    ToolButton23: TToolButton;
    TabSheet1: TTabSheet;
    Memo1: TMemo;
    procedure imgSourceMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure imgSourceClick(Sender: TObject);
    procedure sbSourceClick(Sender: TObject);
    procedure sbFrameColorClick(Sender: TObject);
    procedure chbRoundRectClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Action1Update(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure sgCardsClick(Sender: TObject);
    procedure pcMainChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure seBorderChange(Sender: TObject);
    procedure seFrameChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chbCuttingLineClick(Sender: TObject);
    procedure imgFrameDblClick(Sender: TObject);
    procedure imgFrameStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure imgFrameMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure seDPIChange(Sender: TObject);
    procedure img1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure img1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure img1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure Grid(png: tpngobject;CountX,CountY:integer);
    procedure chbMirrorClick(Sender: TObject);
    procedure Resetgrid1Click(Sender: TObject);
    procedure Autodetect1Click(Sender: TObject);
    procedure ToolButton20Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure FrameBoxPaint(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure seSizeXChange(Sender: TObject);
    procedure seSizeYChange(Sender: TObject);
    procedure tbOnecardClick(Sender: TObject);
    procedure FrameBoxMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sgCardsSetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: String);
    procedure seFrameXChange(Sender: TObject);
    procedure seFrameYChange(Sender: TObject);
    procedure Action8Execute(Sender: TObject);
    procedure Action7Execute(Sender: TObject);
    procedure Splitter1Moved(Sender: TObject);
    procedure chbCornersClick(Sender: TObject);
    procedure chbDimensionClick(Sender: TObject);
    procedure chbResultClick(Sender: TObject);
    procedure Splitter2Moved(Sender: TObject);
    procedure tbtRotateClick(Sender: TObject);
    procedure tbtSplitClick(Sender: TObject);
    procedure sgCardsSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure tbHideLinesClick(Sender: TObject);
    procedure seShiftChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    fGetColor:boolean;
    p1,p2,p3,p4,p11,p12,p13,p14:TPoint;
    fFileName:string;

    fMove:TPoint;
    Otves:Tpoint;
    Img:TGraphic;
    FScale: double;
    RedRects:array of TRect;
    BlueRects:array of TRect;
    YellowRects:array of TRect;
    GreenStyle:TPenStyle;
    ReFrame:boolean;
    FStop: Boolean;
    FOldCorned:string;
    Cntr:TPoint;

    procedure RotateBitmapGDIP(Bmp: TBitmap; Degs: Double;
      AdjustSize: Boolean; BkColor: TColor = clNone);
    procedure SetScale(const Value: double);
    procedure SetStop(const Value: Boolean);
  public
    { Public declarations }
    procedure DrawFrame(x,y:integer;a:double);

    procedure DrawCard(x,y,i:integer;a:double; png:TPNGObject);
    procedure LoadIniFile(AFilename:string);
    procedure SaveIniFile(AFilename:string;AGrid:boolean);
    procedure LoadImage(AFilename:string);

    procedure DemoCard(x,y,i:integer;a:double;Frm:integer=0);

    procedure ScanAuto(x,y:integer);


    property Scale:double read FScale write SetScale;
    function Zm(P:TPoint):TPoint;

    property Stop:Boolean read FStop write SetStop;
    procedure CenterAxis(a:double);
    procedure CalcCenter;
  end;

var
  MainForm: TMainForm;

implementation

uses jpeg,math, Types, u_ProgressForm, u_SplitForm, CommCtrl;


{$R *.dfm}

const
  StepX:array[1..4] of integer = (1,5,20,100);
  StepA:array[1..3] of Double = (0.02,0.1,1.00);


var     fDefSpeed:Integer;


procedure TMainForm.imgSourceMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if Shape2.Visible then
  begin
    Shape2.Height :=  y+1 - ScrollBox1.VertScrollBar.Position - Shape2.Top;
    Shape2.Width := x - ScrollBox1.HorzScrollBar.Position - Shape2.Left;
  end;  


  if pcMain.ActivePage = tsSelected then
  begin
    pnXY.Caption := IntToStr(x ) + ' / '+ IntToStr(y);
    img2.Picture.Bitmap.Canvas.BrushCopy(Rect(0,0,44,71),TImage(Sender).Picture.Bitmap,  Rect(x-3,y-4,x+2,y+4),clNone)
  end
  else begin
    pnXY.Caption := IntToStr(Round(x / Scale )) + ' / '+ IntToStr(Round(y / Scale));
    img2.Picture.Bitmap.Canvas.BrushCopy(Rect(0,0,44,71),imgSource.Picture.Bitmap,  Rect(Round(x / Scale)-3,Round(y / Scale)-4,Round(x / Scale)+2,Round(y / Scale)+4),clNone);
  end;
  img2.Picture.Bitmap.Canvas.MoveTo(26,0);
  img2.Picture.Bitmap.Canvas.LineTo(26,90);

  img2.Picture.Bitmap.Canvas.MoveTo(18,0);
  img2.Picture.Bitmap.Canvas.LineTo(18,90);
  img2.Picture.Bitmap.Canvas.MoveTo(0,36);
  img2.Picture.Bitmap.Canvas.LineTo(54,36);

  if fGetColor then
  begin
    shFrameColor.Pen.Color := imgSource.Picture.Bitmap.Canvas.Pixels[round(x/scale),Round(y/scale)];
    shFrameColor.Brush.Color := $FFFFFF xor shFrameColor.Pen.Color;
  end;

  if ssRight in Shift then
  begin

  ScrollBox1.HorzScrollBar.Position := ScrollBox1.HorzScrollBar.Position - (fMove.X - x)div 2 ;
  ScrollBox1.VertScrollBar.Position := ScrollBox1.VertScrollBar.Position - (fMove.Y - y)div 2 ;
    fMove.X := x;
    fMove.Y := y;
  end;

end;

procedure TMainForm.imgSourceClick(Sender: TObject);
begin
  Application.ProcessMessages;
  fGetColor := False;
  sbFrameColor.BevelOuter := bvRaised;
end;

procedure TMainForm.sbSourceClick(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    pcMain.ActivePageIndex := 0;
    LoadImage(OpenPictureDialog1.FileName);
    CalcCenter;
  end;
end;

procedure TMainForm.sbFrameColorClick(Sender: TObject);
begin
  fGetColor := NOT fGetColor;
  if fGetColor then
    sbFrameColor.BevelOuter := bvLowered
  else
    sbFrameColor.BevelOuter := bvRaised;
end;

procedure TMainForm.chbRoundRectClick(Sender: TObject);
begin
  if chbRoundRect.Checked then
    shFrameColor.Shape := stRoundRect
  else
    shFrameColor.Shape := stRectangle;
  if (pcMain.ActivePageIndex = 1) then
    pcMainChange(nil)
end;

procedure DrawAntialisedLine(Canvas: TCanvas; const AX1, AY1, AX2, AY2: real; const LineColor: TColor);

var
     swapped: boolean;

     procedure plot(const x, y, c: real);
     var
       resclr: TColor;
     begin
       if swapped then
         resclr := Canvas.Pixels[round(y), round(x)]
       else
         resclr := Canvas.Pixels[round(x), round(y)];
       resclr := RGB(round(GetRValue(resclr) * (1-c) + GetRValue(LineColor) * c),
                     round(GetGValue(resclr) * (1-c) + GetGValue(LineColor) * c),
                     round(GetBValue(resclr) * (1-c) + GetBValue(LineColor) * c));
       if swapped then
         Canvas.Pixels[round(y), round(x)] := resclr
       else
         Canvas.Pixels[round(x), round(y)] := resclr;
     end;

     function rfrac(const x: real): real;
     begin
       rfrac := 1 - frac(x);
     end;

     procedure swap(var a, b: real);
     var
       tmp: real;
     begin
       tmp := a;
       a := b;
       b := tmp;
     end;

var
     x1, x2, y1, y2, dx, dy, gradient, xend, yend, xgap, xpxl1, ypxl1,
     xpxl2, ypxl2, intery: real;
     x: integer;

begin

     x1 := AX1;
     x2 := AX2;
     y1 := AY1;
     y2 := AY2;

     dx := x2 - x1;
     dy := y2 - y1;
     swapped := abs(dx) < abs(dy);
     if swapped then
     begin
       swap(x1, y1);
       swap(x2, y2);
       swap(dx, dy);
     end;
     if x2 < x1 then
     begin
       swap(x1, x2);
       swap(y1, y2);
     end;

     gradient := dy / dx;

     xend := round(x1);
     yend := y1 + gradient * (xend - x1);
     xgap := rfrac(x1 + 0.5);
     xpxl1 := xend;
     ypxl1 := floor(yend);
     plot(xpxl1, ypxl1, rfrac(yend) * xgap);
     plot(xpxl1, ypxl1 + 1, frac(yend) * xgap);
     intery := yend + gradient;

     xend := round(x2);
     yend := y2 + gradient * (xend - x2);
     xgap := frac(x2 + 0.5);
     xpxl2 := xend;
     ypxl2 := floor(yend);
     plot(xpxl2, ypxl2, rfrac(yend) * xgap);
     plot(xpxl2, ypxl2 + 1, frac(yend) * xgap);

     for x := round(xpxl1) + 1 to round(xpxl2) - 1 do
     begin
       plot(x, floor(intery), rfrac(intery));
       plot(x, floor(intery) + 1, frac(intery));
       intery := intery + gradient;
     end;

end;

procedure TMainForm.DrawFrame;

procedure Ellipse(X,Y,A,B: integer; Angle: single);
var
 I,S,C,H2,K1,K2,R: single;
 X1,X2,Y1,Y2,X3,Y3,X4,Y4,YY: integer;
begin
 with FrameBox.Canvas do
 begin
 I:=(180-Angle)*PI/180;
 S:=Sin(I);
 C:=Cos(I);
 H2:=Sqr(A*S)+Sqr(B*C);
 K1:=S*C*(Sqr(A)-Sqr(B))/H2;
 K2:=A*B/H2;
 YY:=0;
 while Sqr(YY)<=H2 do
   begin
     R:=K2*Sqrt(H2-Sqr(YY));
     X1:=Round(K1*YY+R);
     X2:=Round(K1*YY-R);
     if YY=0 then
       begin
         Pixels[X+X1,Y+YY]:=Pen.Color;
         Pixels[X-X1,Y-YY]:=Pen.Color;
       end
     else
       begin
         MoveTo(X+X1,Y+YY);
         LineTo(X+X3,Y+YY-1);
         MoveTo(X+X2,Y+YY);
         LineTo(X+X4,Y+YY-1);
         MoveTo(X-X1,Y-YY);
         LineTo(X-X3,Y-YY+1);
         MoveTo(X-X2,Y-YY);
         LineTo(X-X4,Y-YY+1);
       end;
     X3:=X1;
     X4:=X2;
     Inc(YY);
   end;
 H2:=Int(1.99*(YY-Sqrt(H2)));
 MoveTo(X+X3,Y+YY-1);
 LineTo(X+X3-Round(R),Y+YY-Round(H2));
 LineTo(X+X4,Y+YY-1);
 MoveTo(X-X3,Y-YY+1);
 LineTo(X-X3+Round(R),Y-YY+Round(H2));
 LineTo(X-X4,Y-YY+1);
 end;
end;

begin
  if GreenStyle = psSolid then
  begin
    FrameBox.Canvas.Pen.Style := psDot;
    FrameBox.Canvas.Pen.Color := ColorBox1.Selected;
  end
  else
  begin
    FrameBox.Canvas.Pen.Style := psSolid;
    FrameBox.Canvas.Pen.Color := ColorBox2.Selected;
   end;
  GreenStyle := FrameBox.Canvas.Pen.Style;

  p1 := Point(x,y);
  p2 := Point(x + Round(seSizeX.Value*Cos(a/180*Pi)),y + Round(seSizeX.Value*sin(a/180*Pi)));
  p3 := Point(x - Round(seSizeY.Value*Sin(a/180*Pi)),y + Round(seSizeY.Value*Cos(a/180*Pi)));
  p4 := Point(x + Round(seSizeX.Value*Cos(a/180*Pi)) - Round(seSizeY.Value*Sin(a/180*Pi))
             ,y + Round(seSizeX.Value*sin(a/180*Pi) + Round(seSizeY.Value*Cos(a/180*Pi))));

  FrameBox.Canvas.Pen.Width := 1;

  if chkHex.Checked then
    Ellipse(
      Round((p1.X + p4.X) * Scale / 2),
      Round((p1.Y + p4.Y) * Scale / 2),
      Round(max(seSizeX.Value, seSizeY.Value) * Scale/2 ),
      Round(max(seSizeX.Value, seSizeY.Value) * Scale/2 ),
      a
    );

  FrameBox.Canvas.Polyline([Zm(p1),Zm(p2),Zm(p4),Zm(p3),Zm(p1)]);
  FrameBox.Canvas.Pen.Width := 3;
  FrameBox.Canvas.Polyline([Zm(p1),Zm(p2)]);
{
  DrawAntialisedLine(FrameBox.Canvas, Zm(p1).X, Zm(p1).y, Zm(p2).X, Zm(p2).y,  FrameBox.Canvas.Pen.Color);
  DrawAntialisedLine(FrameBox.Canvas, Zm(p4).X, Zm(p4).y, Zm(p2).X, Zm(p2).y,  FrameBox.Canvas.Pen.Color);
  DrawAntialisedLine(FrameBox.Canvas, Zm(p3).X, Zm(p3).y, Zm(p4).X, Zm(p4).y,  FrameBox.Canvas.Pen.Color);
  DrawAntialisedLine(FrameBox.Canvas, Zm(p1).X, Zm(p1).y, Zm(p3).X, Zm(p3).y,  FrameBox.Canvas.Pen.Color);
}


  p11.X := p1.X + Round(seFrameX.Value*Cos(a/180*Pi) - (seFrameY.Value*Sin(a/180*Pi)));
  p11.Y := p1.Y + Round(seFrameX.Value*Sin(a/180*Pi) + (seFrameY.Value*Cos(a/180*Pi)));

  p12 := Point(p11.X + Round((seSizeX.Value - 2*seFrameX.Value)*Cos(a/180*Pi))
        ,p11.Y + Round((seSizeX.Value - 2*seFrameX.Value)*sin(a/180*Pi)));

  p13 := Point(p11.X - Round((seSizeY.Value - 2*seFrameY.Value ) *Sin(a/180*Pi))
             ,p11.Y + Round((seSizeY.Value - 2*seFrameY.Value )*Cos(a/180*Pi)));


  p14 := Point(p11.X + Round((seSizeX.Value - 2*seFrameX.Value)*Cos(a/180*Pi)) - Round((seSizeY.Value - 2*seFrameY.Value)*Sin(a/180*Pi))
              ,p11.Y + Round((seSizeX.Value - 2*seFrameX.Value)*sin(a/180*Pi) + Round((seSizeY.Value - 2*seFrameY.Value)*Cos(a/180*Pi))));


  if (p1.X<>p11.X) or (p2.X<>p12.X)or (p3.X<>p13.X)or (p4.X<>p14.X)
  or (p1.y<>p11.y) or (p2.y<>p12.y)or (p3.y<>p13.y)or (p4.y<>p14.y)
  then
  FrameBox.Canvas.Polyline([Zm(p11),Zm(p12),Zm(p14),Zm(p13),Zm(p11)]);

  if Timer1.Interval = 512 then

  if imgPreview.Visible and
  (FOldCorned <> sgCards.Rows[sgCards.Row].CommaText + ','+seSizeX.Text + ','+seSizeY.Text+','+seShift.Text)
  then
  begin
    FOldCorned:= sgCards.Rows[sgCards.Row].CommaText+ ','+seSizeX.Text + ','+seSizeY.Text+','+seShift.Text;

    DemoCard(StrToIntDef(sgCards.Cells[1, sgCards.Row],0),
      StrToIntDef(sgCards.Cells[2, sgCards.Row],0),0,
      StrToFloatDef(sgCards.Cells[3, sgCards.Row],0),10);
    imgPreview.Picture.Bitmap.Width := imgPreview.Width;
    imgPreview.Picture.Bitmap.Height :=  imgPreview.Height;




    imgPreview.Picture.Bitmap.Canvas.BrushCopy(
      Rect(0,0,imgPreview.Width div 2,imgPreview.Height div 2),
      img1.Picture.Bitmap,
      Rect(0,0,imgPreview.Width div 2,imgPreview.Height div 2),-1);

    imgPreview.Picture.Bitmap.Canvas.BrushCopy(
      Rect(imgPreview.Width div 2 + 1,0,imgPreview.Width,imgPreview.Height div 2),
      img1.Picture.Bitmap,
      Rect(img1.Width-imgPreview.Width div 2,0,img1.Width,imgPreview.Height div 2),-1);

    imgPreview.Picture.Bitmap.Canvas.BrushCopy(
      Rect(0,imgPreview.Height div 2+1,imgPreview.Width div 2,imgPreview.Height),
      img1.Picture.Bitmap,
      Rect(0,img1.Height-imgPreview.Height div 2,imgPreview.Width div 2,Img1.height),-1);

    imgPreview.Picture.Bitmap.Canvas.BrushCopy(
      Rect(imgPreview.Width div 2 + 1,imgPreview.Height div 2+1,imgPreview.Width,imgPreview.Height),
      img1.Picture.Bitmap,
      Rect(img1.Width-imgPreview.Width div 2,img1.Height-imgPreview.Height div 2,Img1.Width,Img1.height),-1);

//    imgPreview.Invalidate;

  end;

end;

procedure TMainForm.Timer1Timer(Sender: TObject);
var
  i:integer;
  Button: TTBButton;
  Btn:TToolButton;
  Tmr:integer;

begin
  Tmr:=512;


//  Timer1.Enabled:=True;
if {pcMain.ActivePageIndex = 0) and}not Shape2.Visible then
  begin
  DrawFrame(StrToIntDef(sgCards.Cells[1, sgCards.Row],0),
    StrToIntDef(sgCards.Cells[2, sgCards.Row],0),
    StrToFloatDef(sgCards.Cells[3, sgCards.Row],0));

    if Sender = nil then FrameBox.Repaint;

  end;

  if seDPI.Value > 0 then
   lblDPI.Caption := FormatFloat('0.0', 25.4 / seDPI.Value * seSizeX.Value)
     +'/' + FormatFloat('0.0', 25.4 / seDPI.Value * seSizeY.value )
     +^M +  FormatFloat('0.0', 25.4 / seDPI.Value * (seBorder.Value*2 + seSizeX.Value * seCountX.Value + seCountX.Value -1 + seInterval.Value * (seCountX.Value -1)))
    +'/' + FormatFloat('0.0', 25.4 / seDPI.Value *(seBorder.Value*2 + seSizeY.Value * seCountY.Value + seCountY.Value -1 + seInterval.Value * (seCountY.Value -1)))
;

  if (Sender <> nil)  and   (GetAsyncKeystate(VK_LBUTTON) shr 31=1) then
  for I := 0 to ComponentCount - 1 do
    if Components[i] is TToolButton then
    begin
      Btn := TToolButton(Components[i]);
        if Btn.Action <> Nil then
          if (Btn.Action as TAction).Category='Move' then
          begin
            if TToolBar(Btn.Parent).Perform(TB_GETBUTTON, Btn.Index, Longint(@Button)) <> 0 then
            begin
              if (Button.fsState = 6)  then
              begin
                Btn.Action.Execute;
                if Timer1.Interval > 8 then
                  Tmr := Timer1.Interval div 2;
              end;
            end;
          end;
    end;
  if Timer1.Interval<>Tmr then
    Timer1.Interval:=Tmr;
end;

procedure TMainForm.Action1Update(Sender: TObject);
begin
 TAction(Sender).Enabled := (pcMain.ActivePage <> tsResult)
  and Timer1.Enabled;
{
 GroupBox1.Enabled := (pcMain.Active <> );
 GroupBox2.Enabled := (pcMain.ActivePageIndex = 0);
}
 sbFrameColor.Enabled := (pcMain.ActivePageIndex = 0);
 Label1.Enabled := not chbMirror.Checked;

end;

procedure TMainForm.Action1Execute(Sender: TObject);
begin
  sgCards.Cells[1, sgCards.Row] := IntToStr(
   StrToIntDef(sgCards.Cells[1, sgCards.Row],0) - Stepx[TrackBar2.Position]
  );
  CalcCenter;
  Timer1Timer(nil)
end;

procedure TMainForm.Action2Execute(Sender: TObject);
begin
  sgCards.Cells[1, sgCards.Row] := IntToStr(
   StrToIntDef(sgCards.Cells[1, sgCards.Row],0) + Stepx[TrackBar2.Position]
  );
  CalcCenter;
  Timer1Timer(nil)
end;

procedure TMainForm.Action3Execute(Sender: TObject);
begin
  sgCards.Cells[2, sgCards.Row] := IntToStr(
   StrToIntDef(sgCards.Cells[2, sgCards.Row],0) - Stepx[TrackBar2.Position]
  );
  CalcCenter;
  Timer1Timer(nil)
end;

procedure TMainForm.Action4Execute(Sender: TObject);
begin
  sgCards.Cells[2, sgCards.Row] := IntToStr(
   StrToIntDef(sgCards.Cells[2, sgCards.Row],0) + Stepx[TrackBar2.Position]
  );
  CalcCenter;
  Timer1Timer(nil)
end;


procedure TMainForm.Action5Execute(Sender: TObject);
var a:double;
begin
  a := StrToFloatDef(sgCards.Cells[3, sgCards.Row],0) - Stepa[TrackBar1.Position];
  while a>360 do a:=a-360;
  while a<-360 do a:=a+360;
  sgCards.Cells[3, sgCards.Row] := FloatToStr(a);
  if cbAnchor.ItemIndex=1 then
     CenterAxis(a);
  Timer1Timer(nil)
end;

procedure TMainForm.Action6Execute(Sender: TObject);
var a:double;
begin

  a := StrToFloatDef(sgCards.Cells[3, sgCards.Row],0) + Stepa[TrackBar1.Position];

  while a>360 do a:=a-360;
  while a<-360 do a:=a+360;
  sgCards.Cells[3, sgCards.Row] := FloatToStr(a);
  if cbAnchor.ItemIndex=1 then
     CenterAxis(A);

  Timer1Timer(nil)
end;

procedure TMainForm.sgCardsClick(Sender: TObject);
var p0,p1,p2,p3,p4:TPoint;
   a:double;
begin
//  ScrollBox1.HorzScrollBar.Position := round(StrToIntDef(sgCards.Cells[1, sgCards.Row],0)*Scale)-30;
//  ScrollBox1.VertScrollBar.Position := round(StrToIntDef(sgCards.Cells[2, sgCards.Row],0)*Scale)-30;


  p1.X := StrToIntDef(sgCards.Cells[1, sgCards.Row],0);
  p1.Y := StrToIntDef(sgCards.Cells[2, sgCards.Row],0);
  a := StrToFloatDef(sgCards.Cells[3, sgCards.Row],0);

  p2 := Point(p1.x + Round(seSizeX.Value*Cos(a/180*Pi)),
              p1.y + Round(seSizeX.Value*sin(a/180*Pi)));
  p3 := Point(p1.x - Round(seSizeY.Value*Sin(a/180*Pi)),
              p1.y + Round(seSizeY.Value*Cos(a/180*Pi)));
  p4 := Point(p1.x + Round(seSizeX.Value*Cos(a/180*Pi)) - Round(seSizeY.Value*Sin(a/180*Pi))
             ,p1.y + Round(seSizeX.Value*sin(a/180*Pi) + Round(seSizeY.Value*Cos(a/180*Pi))));

  p0.X := MinIntValue([p1.x,p2.x,p3.x,p4.X]);
  p0.Y := MinIntValue([p1.y,p2.y,p3.y,p4.y]);

  ScrollBox1.HorzScrollBar.Position := round(p0.X *Scale)-30;
  ScrollBox1.VertScrollBar.Position := round(p0.Y *Scale)-30;

  pcMainChange(nil);

  FrameBox.Repaint;
end;

  procedure TMainForm.Grid(png: tpngobject;CountX,CountY:integer);
  var i,j:integer;
  begin
    png.canvas.Rectangle(1,1,png.Width-1, png.Height-1);


    for j := 1 to CountY do
         png.canvas.Rectangle(1, seBorder.Value +1+ (seSizeY.Value + 1 + seInterval.Value) * (j-1),
           png.Width-1, seBorder.Value +1+ seSizeY.Value + (seSizeY.Value + 1 + seInterval.Value) * (j-1));

    for i := 1 to CountX do
    begin
         png.canvas.Rectangle(
           seBorder.Value +1 + (seSizeX.Value + 1 + seInterval.Value) * (i-1), 1,

           seBorder.Value +1+ seSizeX.Value + (seSizeX.Value + 1 + seInterval.Value) * (i-1),png.Height-1);

      for j := 1 to CountY do
         png.canvas.Rectangle(
           seBorder.Value +1 + (seSizeX.Value + 1 + seInterval.Value) * (i-1),

           seBorder.Value +1+ (seSizeY.Value + 1 + seInterval.Value) * (j-1),

           seBorder.Value +1+ seSizeX.Value + (seSizeX.Value + 1 + seInterval.Value) * (i-1),

           seBorder.Value +1+ seSizeY.Value + (seSizeY.Value + 1 + seInterval.Value) * (j-1));
     end;
  end;

procedure TMainForm.pcMainChange(Sender: TObject);
var
  png: tpngobject;
  var i:integer;


begin
  Timer1.Enabled := pcMain.ActivePage <> tsResult;
  if pcMain.ActivePage = tsResult then
  begin

  png := tpngobject.createblank(COLOR_RGB, 8,
    seBorder.Value*2 + seSizeX.Value * seCountX.Value + seCountX.Value -1 + seInterval.Value * (seCountX.Value -1),
    seBorder.Value*2 + seSizeY.Value * seCountY.Value + seCountY.Value -1 + seInterval.Value * (seCountY.Value -1));
//  png.TransparentColor := clMaroon;
  png.canvas.brush.Style := bsSolid;
  if chbCuttingLine.Checked then
    png.Canvas.Brush.Color := clWhite
  else
    png.Canvas.Brush.Color := shFrameColor.pen.color;
  png.Canvas.FillRect(Rect(0, 0, png.width, png.height));
  png.canvas.pen.color := clBlack;
  png.canvas.pen.Width := 3;
  png.Canvas.Brush.Style := bsClear;

  if seInterval.Value = 0 then
  begin
    if chbCuttingLine.Checked then
      grid(png,seCountX.Value,seCountY.Value);

    png.canvas.pen.color := clWhite;
  end;
  png.canvas.pen.Width := 1;

  if chbCuttingLine.Checked then
    grid(png,seCountX.Value,seCountY.Value);


  for i:= 1 to sgCards.RowCount-1 do
     DrawCard(StrToIntDef(sgCards.Cells[1, i],0),
              StrToIntDef(sgCards.Cells[2, i],0),
              i,
              StrToFloatDef(sgCards.Cells[3, i],0), png);


  imgResult.Width := png.Width;
  imgResult.Height := png.Height;
  imgResult.Picture.Graphic := png;
  imgResult.Invalidate;
  end;


  if pcMain.ActivePage = tsSelected then
  begin
    DemoCard(StrToIntDef(sgCards.Cells[1, sgCards.Row],0),
      StrToIntDef(sgCards.Cells[2, sgCards.Row],0),0,
      StrToFloatDef(sgCards.Cells[3, sgCards.Row],0),40);
  end;

//  img2.Visible := pcMain.ActivePage = tsSelected;


end;



Type
  T2DFace = Array[0..2] Of TPoint;

procedure TMainForm.DrawCard(x, y, i: integer; a: double; png:TPNGObject);
var OrgPntArray : T2DFace;
  r3,r4,BufRect:TRect;
  dx,dy:integer;
  bmp:TBitmap;
  ii,z:Integer;

begin
  p1 := Point(x,y);
  p2 := Point(x + Round(seSizeX.Value*Cos(a/180*Pi)),y + Round(seSizeX.Value*sin(a/180*Pi)));
  p3 := Point(x - Round(seSizeY.Value*Sin(a/180*Pi)),y + Round(seSizeY.Value*Cos(a/180*Pi)));
  p4 := Point(x + Round(seSizeX.Value*Cos(a/180*Pi)) - Round(seSizeY.Value*Sin(a/180*Pi))
             ,y + Round(seSizeX.Value*sin(a/180*Pi) + Round(seSizeY.Value*Cos(a/180*Pi))));

  BufRect := Rect(Min(Min(p1.X,p2.X),Min(p3.X,p4.X)),
                  Min(Min(p1.Y,p2.Y),Min(p3.Y,p4.Y)),
                  Max(Max(p1.X,p2.x),Max(p3.X,p4.x)),
                  Max(Max(p1.Y,p2.Y),Max(p3.Y,p4.Y)));

  DemoCard(x,y,0,a);

  p1 := Point(1+seBorder.Value + (seSizeX.Value+1+seInterval.Value) * ((i-1) mod seCountX.Value) ,
         1+seBorder.Value + (seSizeY.Value+1+seInterval.Value) * ((i-1) div seCountX.Value));

  p2 := Point(p1.X + seSizeX.Value, p1.Y + seSizeY.Value);

  png.Canvas.CopyRect(
    Rect(p1.X+1,p1.Y+1, p2.X-1,p2.y-1),
    img1.Picture.Bitmap.Canvas,
    Rect(0,0,seSizeX.Value-1 ,seSizey.Value-1)
  );

  if chbRoundRect.Checked  and not chbMirror.Checked then
  begin
//    imgFrame.Canvas.Pen.Width := 1;
    png.Canvas.Pen.Color := shFrameColor.pen.color;
    png.Canvas.Brush.Color := shFrameColor.pen.color;
    png.Canvas.Pen.Style := psSolid;
    png.Canvas.Brush.Style := bsSolid;

    png.Canvas.Rectangle(Rect(p1.X,p1.Y, p2.X-seFrameX.Value,p1.y+seFrameY.Value));
    png.Canvas.Rectangle(Rect(p1.X,p1.Y, p1.X+seFrameX.Value,p2.y));
    png.Canvas.Rectangle(Rect(p2.X,p2.Y, p2.X-seFrameX.Value,p1.y));
    png.Canvas.Rectangle(Rect(p2.X,p2.Y, p1.X,p2.y-seFrameY.Value));

  end;


  if chbRoundRect.Checked then
  begin
    png.Canvas.Pen.Width := Min(seFrameX.Value, seFrameY.Value);
    png.Canvas.Pen.Color := shFrameColor.pen.color;
    png.Canvas.Pen.Style := psSolid;
    png.Canvas.Brush.Style := bsClear;

    if seFrameX.Value > seFrameY.Value then
      dx := (seFrameX.Value - seFrameY.Value) div 2
    else
      dx := 0;

    if seFrameY.Value > seFrameX.Value then
      dy := (seFrameY.Value - seFrameX.Value) div 2
    else
      dy := 0;

    png.Canvas.Rectangle(dx+p1.X+seFrameX.Value div 2,
                         dy+p1.Y+seFrameY.Value div 2,
                         p2.X-dx-seFrameX.Value div 2,
                         p2.y-dy-seFrameY.Value div 2);
    png.Canvas.RoundRect(dx+p1.X+seFrameX.Value div 2,
                         dy+p1.Y+seFrameY.Value div 2,
                         p2.X-dx-seFrameX.Value div 2,
                         p2.y-dy-seFrameY.Value div 2,
                         round(png.Canvas.Pen.Width*2.5),round(png.Canvas.Pen.Width*2.5));
    png.Canvas.Brush.Style := bsSolid;
  end;

  if chbMirror.Checked then
  begin
    z := seInterval.Value div 2;
    for ii := 0 to z do
    begin
      r3:=Rect(p1.X-seInterval.Value div 2,
               p1.Y-ii+0,
               p2.X+seInterval.Value div 2,
               p1.Y-ii+1);

      r4:=Rect(p1.X-seInterval.Value div 2,
               p1.Y+ii+1,
               p2.X+seInterval.Value div 2,
               p1.Y+ii+2);
      png.Canvas.CopyRect(r3,png.Canvas,r4);

      r3:=Rect(p1.X-seInterval.Value div 2,
               p2.Y+ii-1,
               p2.X+seInterval.Value div 2,
               p2.Y+ii);
      r4:=Rect(p1.X-seInterval.Value div 2,
               p2.Y-ii-2,
               p2.X+seInterval.Value div 2,
               p2.Y-ii-1);
      png.Canvas.CopyRect(r3,png.Canvas,r4);
    end;

    for ii := 0 to z do
    begin
      r3:=Rect(p1.X-ii,
               p1.Y-seInterval.Value div 2,
               p1.X-ii-1 ,
               p2.Y+seInterval.Value div 2);

      r4:=Rect(p1.X+ii+1,
               p1.Y-seInterval.Value div 2,
               p1.X+ii+2,
               p2.Y+seInterval.Value div 2);
      png.Canvas.CopyRect(r3,png.Canvas,r4);

      r3:=Rect(p2.X+ii-1,
               p1.Y-seInterval.Value div 2,
               p2.X+ii-0 ,
               p2.Y+seInterval.Value div 2);

      r4:=Rect(p2.X-ii-3,
               p1.Y-seInterval.Value div 2,
               p2.X-ii-2,
               p2.Y+seInterval.Value div 2);
      png.Canvas.CopyRect(r3,png.Canvas,r4);

    end;


  end;


  png.Canvas.Pen.Width := 1;
  png.Canvas.Brush.Style := bsClear;
  if chbCuttingLine.Checked then
  begin
//    png.Canvas.Rectangle(p1.X,p1.Y, p2.X,p2.y);
    png.Canvas.Pen.Color := $FFFFFF;
    png.Canvas.Pen.Style := psSolid;

    png.Canvas.MoveTo(p1.X+50,p1.Y);
    png.Canvas.LineTo(p1.X,p1.Y);
    png.Canvas.LineTo(p1.X,p1.Y+50);

    png.Canvas.MoveTo(p2.X-51,p1.Y);
    png.Canvas.LineTo(p2.X-1,p1.Y);
    png.Canvas.LineTo(p2.X-1,p1.Y+50);

    png.Canvas.MoveTo(p1.X+50,p2.Y-1);
    png.Canvas.LineTo(p1.X,p2.Y-1);
    png.Canvas.LineTo(p1.X,p2.Y-51);

    png.Canvas.MoveTo(p2.X-51,p2.Y-1);
    png.Canvas.LineTo(p2.X-1,p2.Y-1);
    png.Canvas.LineTo(p2.X-1,p2.Y-51);

    png.Canvas.Pen.Color := $000000;
    png.Canvas.Pen.Style := psDot;

    png.Canvas.MoveTo(p1.X+50,p1.Y);
    png.Canvas.LineTo(p1.X,p1.Y);
    png.Canvas.LineTo(p1.X,p1.Y+50);

    png.Canvas.MoveTo(p2.X-51,p1.Y);
    png.Canvas.LineTo(p2.X-1,p1.Y);
    png.Canvas.LineTo(p2.X-1,p1.Y+50);

    png.Canvas.MoveTo(p1.X+50,p2.Y-1);
    png.Canvas.LineTo(p1.X,p2.Y-1);
    png.Canvas.LineTo(p1.X,p2.Y-51);

    png.Canvas.MoveTo(p2.X-51,p2.Y-1);
    png.Canvas.LineTo(p2.X-1,p2.Y-1);
    png.Canvas.LineTo(p2.X-1,p2.Y-51);


  end;
  png.Canvas.Brush.Style := bsSolid;


end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  Scale := 1;
  img2.Picture.Bitmap.Width := img2.Width;
  img2.Picture.Bitmap.Height := img2.Height;

  sgCards.Cells[0,0] := '¹';
  sgCards.Cells[1,0] := 'X';
  sgCards.Cells[2,0] := 'Y';
  sgCards.Cells[3,0] := 'a';
  sgCards.Cells[0,1] := '1:1  ->';

  lblDir.Caption := '';
  lblFile.Caption := '';
  Application.Title := 'Card arrange(PnP)';
  fFileName := ChangeFileExt(Paramstr(0),'');
  if FileExists(ChangeFileExt(Paramstr(0),'.INI')) then
    LoadIniFile(ChangeFileExt(Paramstr(0),'.INI'));
  Resetgrid1Click(nil);
  if ParamCount=1 then
    if (UpperCase(ExtractFileExt(ParamStr(1)))='.BMP')
      or (UpperCase(ExtractFileExt(ParamStr(1)))='.JPG')
      or (UpperCase(ExtractFileExt(ParamStr(1)))='.JPEG')
    then LoadImage(ParamStr(1));
DoubleBuffered := True;
AlphaBlend := False;
end;

procedure TMainForm.Button1Click(Sender: TObject);
var i,dx,dy:Integer;

procedure Frame;
  begin

    img1.Picture.Bitmap.Canvas.Pen.Width := 1;
    img1.Picture.Bitmap.Canvas.Pen.Color := shFrameColor.pen.color;
    img1.Picture.Bitmap.Canvas.Brush.Color := shFrameColor.pen.color;
    img1.Picture.Bitmap.Canvas.Pen.Style := psSolid;
    img1.Picture.Bitmap.Canvas.Brush.Style := bsSolid;

    img1.Picture.Bitmap.Canvas.Rectangle(Rect(1,1, seSizeX.value-seFrameX.Value,1+seFrameY.Value));
    img1.Picture.Bitmap.Canvas.Rectangle(Rect(1,1, 1+seFrameX.Value,seSizeY.value));
    img1.Picture.Bitmap.Canvas.Rectangle(Rect(seSizeX.value,seSizeY.value, seSizeX.value-seFrameX.Value,1));
    img1.Picture.Bitmap.Canvas.Rectangle(Rect(seSizeX.value,seSizeY.value, 1,seSizeY.value-seFrameY.Value));


  if chbRoundRect.Checked then
  begin
    img1.Picture.Bitmap.Canvas.Pen.Width := Min(seFrameX.Value, seFrameY.Value);
    img1.Picture.Bitmap.Canvas.Pen.Color := shFrameColor.pen.color;
    img1.Picture.Bitmap.Canvas.Pen.Style := psSolid;
    img1.Picture.Bitmap.Canvas.Brush.Style := bsClear;

    if seFrameX.Value > seFrameY.Value then
      dx := (seFrameX.Value - seFrameY.Value) div 2
    else
      dx := 0;

    if seFrameY.Value > seFrameX.Value then
      dy := (seFrameY.Value - seFrameX.Value) div 2
    else
      dy := 0;

    img1.Picture.Bitmap.Canvas.Rectangle(dx+1+seFrameX.Value div 2,
                         dy+1+seFrameY.Value div 2,
                         seSizeX.value-dx-seFrameX.Value div 2,
                         seSizeY.value-dy-seFrameY.Value div 2);
    img1.Picture.Bitmap.Canvas.RoundRect(dx+1+seFrameX.Value div 2,
                         dy+1+seFrameY.Value div 2,
                         seSizeX.value-dx-seFrameX.Value div 2,
                         seSizeY.value-dy-seFrameY.Value div 2,
                         round(img1.Picture.Bitmap.Canvas.Pen.Width*2.5),round(img1.Picture.Bitmap.Canvas.Pen.Width*2.5));
    img1.Picture.Bitmap.Canvas.Brush.Style := bsSolid;
  end;

end;

  procedure Split(AFIleName:string;x,y, Ableed:integer);
  var png : tpngobject;
    bleed,i:Integer;
    s:string;
    procedure ResetPng;
    begin
  png.TransparentColor := clMaroon;
  png.canvas.brush.Style := bsSolid;
  if chbCuttingLine.Checked or (Ableed>0) then
    png.Canvas.Brush.Color := clWhite
  else
    png.Canvas.Brush.Color := shFrameColor.pen.color;
  png.Canvas.FillRect(Rect(0, 0, png.width, png.height));
  png.canvas.pen.color := clBlack;
  png.canvas.pen.Width := 3;
  png.Canvas.Brush.Style := bsClear;

  if seInterval.Value = 0 then
  begin
    if chbCuttingLine.Checked then
      grid(png,X, Y);

    png.canvas.pen.color := clWhite;
  end;
  png.canvas.pen.Width := 1;

  if chbCuttingLine.Checked then
    grid(png,X, Y);

    end;
  begin
  png := tpngobject.createblank(COLOR_RGB, 8,
    seBorder.Value*2 + seSizeX.Value * X + X -1 + seInterval.Value * (X -1),
    seBorder.Value*2 + seSizeY.Value * Y + Y -1 + seInterval.Value * (Y -1));
  png.PixelInformation.PPUnitX := Round(seDPI.Value/0.0254);
  png.PixelInformation.PPUnitY := Round(seDPI.Value/0.0254);
  png.PixelInformation.UnitType := utMeter;


  ResetPng;


  for i:= 1 to sgCards.RowCount-1 do
  begin
    DemoCard(StrToIntDef(sgCards.Cells[1, i],0),
      StrToIntDef(sgCards.Cells[2, i],0),0,
      StrToFloatDef(sgCards.Cells[3, i],0));
    if chbCuttingLine.Checked or (seFrameX.Value>0)or (seFrameY.Value>0)  then
    frame;

    p1 := Point(1+seBorder.Value + (seSizeX.Value+1+seInterval.Value) * ((i-1) mod X) ,
           1+seBorder.Value + (seSizeY.Value+1+seInterval.Value) * (((i-1) div X) mod Y));

    p2 := Point(p1.X + seSizeX.Value, p1.Y + seSizeY.Value);


    if chbCuttingLine.Checked or (seFrameX.Value>0)or (seFrameY.Value>0)  then
    png.Canvas.CopyRect(
      Rect(p1.X+1,p1.Y+1, p2.X-1,p2.y-1),
      img1.Picture.Bitmap.Canvas,
      Rect(0,0,seSizeX.Value-1 ,seSizey.Value-1))
    else
    png.Canvas.CopyRect(
      Rect(p1.X-1,p1.Y-1, p2.X-1,p2.y-1),
      img1.Picture.Bitmap.Canvas,
      Rect(0,0,seSizeX.Value-1 ,seSizey.Value-1));

    if ABleed >0 then
    begin
      Bleed := ABleed + seBorder.Value;
      png.Canvas.Pen.Color := rgb(0,0,0);
      png.Canvas.Pen.Width := 1;
      png.Canvas.Pen.Style := psSolid;
      png.Canvas.Brush.Style := bsClear;

      png.Canvas.Rectangle(0,0,Bleed,bleed);
      png.Canvas.Rectangle(png.Width,0,png.Width - Bleed,bleed);
      png.Canvas.Rectangle(png.Width,png.Height,png.Width - Bleed,png.Height-bleed);
      png.Canvas.Rectangle(0,png.Height,bleed,png.Height-bleed);

      png.Canvas.Pen.Color := rgb(255,255,255);

      png.Canvas.Rectangle(0,0,Bleed-1,bleed-1);
      png.Canvas.Rectangle(png.Width,0,png.Width - Bleed+1,bleed-1);

      png.Canvas.Rectangle(png.Width,png.Height,png.Width - Bleed+1,png.Height-bleed+1);
      png.Canvas.Rectangle(0,png.Height, bleed-1, png.Height-bleed+1);

    end;


    if (i=sgCards.RowCount-1) or (i mod (X*Y)=0) then
    begin
      if (x=seCountX.Value) and (y=seCountY.Value) then
        s := AFIleName
      else
        s := ChangeFileExt(AFIleName,'') + '_' +Formatfloat('00',i) + '.png';
      png.savetofile(s);
      ResetPng;
    end;
  end;

   png.Free
  end;

begin
  SavePictureDialog1.FileName := ChangeFileExt(fFileName,'.PNG');
  if SavePictureDialog1.Execute then
  begin
    SaveIniFile(fFileName+'.INI', True);
    if not chbSplit.Checked then
      Split(SavePictureDialog1.filename, seCountX.Value, seCountY.Value,0)
    else
    if (seDeltaX.Value=seDeltaY.Value)and (seDeltaX.Value<0) then
      Split(SavePictureDialog1.filename, 1, 1,-seDeltaX.Value)
    else
      Split(SavePictureDialog1.filename, 1, 1,0);
  end;
end;

procedure TMainForm.LoadIniFile(AFilename: string);
var i:integer;
  s:string;
begin
  with TStringList.Create do
  try
    LoadFromFile(AFilename);
    text := StringReplace(text,'  ->','',[rfReplaceAll]);
    seSizeX.Value := StrToIntDef(Values['Size.X'],0);
    seSizeY.Value := StrToIntDef(Values['Size.Y'],0);
    seDeltaX.Value := StrToIntDef(Values['Delta.X'],0);
    seDeltaY.Value := StrToIntDef(Values['Delta.Y'],0);
    seCountX.Value := StrToIntDef(Values['Count.X'],0);
    seCountY.Value := StrToIntDef(Values['Count.Y'],0);
    seBorder.Value := StrToIntDef(Values['Border'],0);
//--    seFrame.Value := StrToIntDef(Values['Frame'],0);
    seInterval.Value := StrToIntDef(Values['Interval'],0);
    seDPI.Value := StrToIntDef(Values['DPI'],0);
    seFrameX.Value := StrToIntDef(Values['Frame.X'],0);
    seFrameY.Value := StrToIntDef(Values['Frame.Y'],0);
    seShift.Value := StrToIntDef(Values['Shift.Y'],0);
    seShift.Visible := seShift.Value<>0;

    shFrameColor.Pen.Color  := StrToIntDef(Values['Color'],0);
    shFrameColor.Brush.Color := $FFFFFF xor shFrameColor.Pen.Color;

    chbRoundRect.Checked := StrToBool(Values['RoundRect']);
    sgCards.RowCount := StrToIntDef(Values['RowCount'],2);
    for i:=1 to sgCards.RowCount-1 do
    begin
      sgCards.Cells[0,i] := IntToStr(1 + ((i-1) div seCountX.Value))+':'+IntToStr(1 + ((i-1) mod seCountX.Value));
      s := sgCards.Cells[0,i];
      if sgCards.Row=i then
        sgCards.Cells[0,i] := sgCards.Cells[0,i] + '  ->';
      sgCards.Cells[1,i] := Values['Card['+s+'].X'];
      sgCards.Cells[2,i] := Values['Card['+s+'].Y'];
      sgCards.Cells[3,i] := Values['Card['+s+'].a'];
    end;


  finally
    Free
  end;
end;

procedure TMainForm.SaveIniFile(AFilename: string;AGrid:boolean);
var i:integer;
begin
  with TStringList.Create do
  try
    if AGrid then
      Values['Filename'] := FFilename;
    Values['Size.X'] := IntToStr(seSizeX.Value);
    Values['Size.Y'] := IntToStr(seSizeY.Value);
    Values['Delta.X'] := IntToStr(seDeltaX.Value);
    Values['Delta.Y'] := IntToStr(seDeltaY.Value);
    Values['Frame.X'] := IntToStr(seFrameX.Value);
    Values['Frame.Y'] := IntToStr(seFrameY.Value);
    Values['Count.X'] := IntToStr(seCountX.Value);
    Values['Count.Y'] := IntToStr(seCountY.Value);
    Values['Border'] := IntToStr(seBorder.Value);
//    Values['Frame'] := IntToStr(seFrame.Value);
    Values['Interval'] := IntToStr(seInterval.Value);
    Values['DPI'] := IntToStr(seDPI.Value);
    Values['Color'] := IntToStr(shFrameColor.Pen.Color);
    Values['RoundRect'] := BoolToStr(chbRoundRect.Checked);
    Values['Shift.Y'] := IntToStr(seShift.Value);
    if AGrid then
    begin
      Values['RowCount'] := IntToStr(sgCards.RowCount);
      for i:=1 to sgCards.RowCount-1 do
      begin
        Values['Card['+sgCards.Cells[0,i]+'].X'] := StringReplace(sgCards.Cells[1,i],'  ->','',[]);
        Values['Card['+sgCards.Cells[0,i]+'].Y'] := sgCards.Cells[2,i];
        Values['Card['+sgCards.Cells[0,i]+'].a'] := sgCards.Cells[3,i];
      end;
    end;

    SaveToFile(AFilename);
  finally
    Free
  end;
end;

procedure TMainForm.Button2Click(Sender: TObject);
begin
  if fFileName<>'' then
    SaveIniFile(fFileName+'.INI', True)
end;

procedure TMainForm.seBorderChange(Sender: TObject);
var test:integer;
begin
  if (pcMain.ActivePageIndex = 1) then
  try
    test:=seBorder.Value;
    pcMainChange(nil)
  except
  end;
end;

procedure TMainForm.seFrameChange(Sender: TObject);
var test:integer;
begin
  if (pcMain.ActivePageIndex = 1) then
  try
//    test:=seFrame.Value;
    pcMainChange(nil)
  except
  end;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    SaveIniFile(ChangeFileExt(Paramstr(0),'.INI'), False);
end;

procedure TMainForm.LoadImage(AFilename: string);
var
  ext :string;
begin
  SetLength(RedRects,0);
  SetLength(BlueRects,0);
  SetLength(YellowRects,0);


  OpenPictureDialog1.FileName := AFilename;

    if Assigned(Img) then
      Img.Free;

    imgSource.Picture.Bitmap.Width:=1;
    imgSource.Picture.Bitmap.Height:=1;

    ext:=UpperCase(ExtractFileExt(AFilename));
    if ext='.PNG' then
    begin
      img := TPngObject.create;
      img.LoadFromFile(AFilename);
      imgSource.Picture.Bitmap.Assign(img);
      if TPngObject(img).HasPixelInformation then
        seDPI.Value := Round(TPngObject(img).PixelInformation.PPUnitX * 0.02540);
    end;
    if (ext='.JPG')or(ext='.JPEG') then
    begin
      img := TJPEGImage.create;
      img.LoadFromFile(AFilename);
      imgSource.Picture.Bitmap.Assign(img);
//      TJPEGImage(img).
    end;
    if (ext='.BMP') then
    begin
      img := TBitmap.create;
      img.LoadFromFile(AFilename);
      imgSource.Picture.Bitmap.Assign(img);
    end;

      Scale:=1;



  imgSource.AutoSize := True;
  imgSource.Proportional := True;
  imgSource.Stretch := False;

    imgSource.Width := imgSource.Picture.Bitmap.Width;
    imgSource.Height := imgSource.Picture.Bitmap.Height;


    if FileExists(OpenPictureDialog1.FileName+'.INI') then
      LoadIniFile(OpenPictureDialog1.FileName+'.INI');

    lblDir.Caption := ExtractFilePath(AFilename);
    lblFile.Caption := ExtractFileName(AFilename);
    fFileName := AFilename;

    Timer1.Enabled := True;
end;

procedure TMainForm.chbCuttingLineClick(Sender: TObject);
begin
  if (pcMain.ActivePageIndex = 1) then
    pcMainChange(nil)
end;

procedure TMainForm.imgFrameDblClick(Sender: TObject);
begin
  sgCards.Cells[1, sgCards.Row] := Trim(copy(pnXY.Caption,1,Pos('/',pnXY.Caption)-1));
  sgCards.Cells[2, sgCards.Row] := Trim(copy(pnXY.Caption,Pos('/',pnXY.Caption)+1,10));
  Timer1Timer(nil);
  sgCardsClick(sgCards);

end;

procedure TMainForm.imgFrameStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  fMove.X := -1;
  fMove.Y := -1;
end;

procedure TMainForm.imgFrameMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  i:integer;
begin
  if ssRight in Shift then
  begin
    fMove.X := x;
    fMove.Y := y;
    for I := 1 to sgCards.RowCount-1 do
      if (StrToIntDef(sgCards.Cells[1,i],0) <  Round(x / Scale ))
        and (StrToIntDef(sgCards.Cells[1,i],0)+seSizeX.Value >  Round(x / Scale ))
        and (StrToIntDef(sgCards.Cells[2,i],0) <  Round(y / Scale ))
        and (StrToIntDef(sgCards.Cells[2,i],0)+seSizeY.Value >  Round(y / Scale ))
      then begin
        sgCards.Row := i;
        Break;
      end;
  end;

  if tbOnecard.Down then
  begin
    Shape2.Visible := (ssLeft in Shift) and not (ssRight in Shift);
    Shape2.Left := x- ScrollBox1.HorzScrollBar.Position;
    Shape2.Top := y- ScrollBox1.VertScrollBar.Position;
    Shape2.Width:=1;
    Shape2.Height:=1;
  end;
end;

procedure TMainForm.seDPIChange(Sender: TObject);
begin
  if seDPI.Value <> 0 then
   lblDPI.Caption := FormatFloat('0.0', 25.4 / seDPI.Value * seSizeX.Value)
     +'/' + FormatFloat('0.0', 25.4 / seDPI.Value * seSizeY.value )
     +^M +  FormatFloat('0', 25.4 / seDPI.Value * (seBorder.Value*2 + seSizeX.Value * seCountX.Value + seCountX.Value -1 + seInterval.Value * (seCountX.Value -1)))
    +'/' + FormatFloat('0', 25.4 / seDPI.Value *(seBorder.Value*2 + seSizeY.Value * seCountY.Value + seCountY.Value -1 + seInterval.Value * (seCountY.Value -1)))
end;

procedure TMainForm.DemoCard(x, y, i: integer; a: double;Frm:integer=0);
var p0:TPoint;
    BufRect:TRect;
    r:integer;
    sf,sx:integer;
begin

  p0 := Point(x + Round(seSizeX.Value/2*Cos(a/180*Pi)) - Round(seSizeY.Value/2*Sin(a/180*Pi))
             ,y + Round(seSizeX.Value/2*sin(a/180*Pi) + Round(seSizeY.Value/2*Cos(a/180*Pi))));

  r := round(sqrt(sqr(seSizeX.Value+2*frm)+sqr(seSizeY.Value+2*frm))/2);

  BufRect :=Rect(p0.x-r,p0.y-r,p0.x+r,p0.y+r);


  img1.Free;
  img1 := TImage.Create(self);
  img1.Cursor := crCross;
  img1.AutoSize := True;
  img1.OnMouseDown := img1MouseDown;
  img1.OnMouseMove := img1MouseMove;
  img1.OnMouseUp := img1MouseUp;
  ScrollBox4.InsertControl(img1);
  img1.SendToBack;


  img1.Picture.Bitmap.Width := 1 + (BufRect.Right - BufRect.Left);
  img1.Picture.Bitmap.Height := 1 + (BufRect.Bottom - BufRect.Top);

  img1.Picture.Bitmap.Canvas.BrushCopy(Rect(0,0,BufRect.Right - BufRect.Left, BufRect.Bottom - BufRect.Top), imgSource.Picture.Bitmap, BufRect, clNone);

  RotateBitmapGDIP(img1.Picture.Bitmap, -a ,True, clNone);

{
  for sf := 1 to abs(seShift.Value) do
  begin
    sx:=

    abs(seShift.Value)
    img1.Picture.Bitmap.Canvas.BrushCopy()


  end;
}

  img1.Picture.Bitmap.Canvas.Pen.Color := ColorBox1.Selected;
  img1.Picture.Bitmap.Canvas.Brush.Style := bsClear;

  img1.Picture.Bitmap.Canvas.BrushCopy(Rect(0,0,seSizeX.Value-1+2*frm, seSizeY.Value-1+2*frm), img1.Picture.Bitmap,   rect(
    Round(img1.Width / 2 - seSizeX.Value / 2- frm),
    Round(img1.Height / 2 - seSizeY.Value / 2-frm),
    Round(img1.Width / 2 - seSizeX.Value / 2)+seSizeX.Value-1+frm,
    Round(img1.Height / 2 - seSizeY.Value / 2)+seSizeY.Value-1+frm)
, clNone);
  img1.Picture.Bitmap.Width := seSizeX.Value+2*Frm;
  img1.Picture.Bitmap.Height := seSizeY.Value+2*Frm;

  if frm>0 then
  begin
    img1.Picture.Bitmap.Canvas.Brush.Style := bsClear;
    img1.Picture.Bitmap.Canvas.Pen.Width := 1;
    img1.Picture.Bitmap.Canvas.Pen.Color := ColorBox1.Selected;
    img1.Picture.Bitmap.Canvas.Pen.Style := psSolid;
    img1.Picture.Bitmap.Canvas.Rectangle(frm-1, frm-1, frm+seSizeX.Value, frm+seSizeY.Value);
    img1.Picture.Bitmap.Canvas.Rectangle(frm-1+seFrameX.Value, frm-1+seFrameY.Value, frm+seSizeX.Value-seFrameX.Value, frm+seSizeY.Value-seFrameY.Value);
  end;

end;

procedure TMainForm.RotateBitmapGDIP(Bmp: TBitmap; Degs: Double; AdjustSize: Boolean;
  BkColor: TColor = clNone);
var
  Tmp: TGPBitmap;
  Matrix: TGPMatrix;
  C: Single;
  S: Single;
  NewSize: TSize;
  Graphs: TGPGraphics;
  P: TGPPointF;
begin
  Tmp := TGPBitmap.Create(Bmp.Handle, Bmp.Palette);
  Matrix := TGPMatrix.Create;
  try
    Matrix.Shear(0, arctan(seShift.Value/seSizeX.value));
    Matrix.Translate(0, -seShift.Value div 2);
    Matrix.RotateAt(Degs, MakePoint(0.5 * Bmp.Width, 0.5 * Bmp.Height));


{
    if AdjustSize then
    begin
      C := Cos(DegToRad(Degs));
      S := Sin(DegToRad(Degs));
      NewSize.cx := Round(Bmp.Width * Abs(C) + Bmp.Height * Abs(S));
      NewSize.cy := Round(Bmp.Width * Abs(S) + Bmp.Height * Abs(C));
      Bmp.Width := NewSize.cx;
      Bmp.Height := NewSize.cy;
    end;
}    
    Graphs := TGPGraphics.Create(Bmp.Canvas.Handle);
    try
      Graphs.Clear(ColorRefToARGB(ColorToRGB(BkColor)));
      Graphs.SetTransform(Matrix);
      Graphs.DrawImage(Tmp, (Cardinal(Bmp.Width) - Tmp.GetWidth) div 2,
        (Cardinal(Bmp.Height) - Tmp.GetHeight) div 2);
    finally
      Graphs.Free;
    end;
  finally
    Matrix.Free;
    Tmp.Free;
  end;
end;


procedure TMainForm.img1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Otves.x := x ;
  Otves.y := y ;
  Shape1.Visible := (ssLeft in Shift) and not (ssRight in Shift);
  Shape1.Left := x- ScrollBox4.HorzScrollBar.Position;
  Shape1.Top := y- ScrollBox4.VertScrollBar.Position;
end;

procedure TMainForm.img1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Shape1.Left + Shape1.Width < img1.Width) and Shape1.Visible  then
  sgCards.Cells[3, sgCards.Row] := FormatFloat('0.0000',
    StrToFloatDef(sgCards.Cells[3, sgCards.Row],0) -
    180 / pi * ArcTan2(x - Otves.x, y - Otves.y));
  Shape1.Visible := false;

  pcMainChange(nil);

end;

procedure TMainForm.img1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Shape1.Height :=  y+1 - ScrollBox4.VertScrollBar.Position - Shape1.Top;
  Shape1.Width := x - ScrollBox4.HorzScrollBar.Position - Shape1.Left;

  if ssLeft in Shift then
    img2.Picture.Bitmap.Canvas.BrushCopy(Rect(0, 36, 44, 71),img1.Picture.Bitmap,  Rect(x-3, y, x+2,y+4),clNone)
  else
    img2.Picture.Bitmap.Canvas.BrushCopy(Rect(0, 0, 44, 71),img1.Picture.Bitmap,  Rect(x-3, y-4, x+2,y+4),clNone);


  img2.Picture.Bitmap.Canvas.MoveTo(26,0);
  img2.Picture.Bitmap.Canvas.LineTo(26,90);

  img2.Picture.Bitmap.Canvas.MoveTo(18,0);
  img2.Picture.Bitmap.Canvas.LineTo(18,90);
  img2.Picture.Bitmap.Canvas.MoveTo(0,36);
  img2.Picture.Bitmap.Canvas.LineTo(54,36);

  pnXY.Caption := IntToStr(Round(x * Scale)) + ' / '+ IntToStr(Round(y* Scale));
end;

procedure TMainForm.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
var
  ctrl:TWinControl;
  zDelta:Integer;

function CtrlDown : Boolean;
var
  State : TKeyboardState;
begin
  GetKeyboardState(State);
  Result := ((State[vk_Control] And 128) <> 0);
end;

function ShiftDown : Boolean;
var
  State : TKeyboardState;
begin
  GetKeyboardState(State);
  Result := ((State[vk_Shift] and 128) <> 0);
end;

function AltDown : Boolean;
var
  State : TKeyboardState;
begin
  GetKeyboardState(State);
  Result := ((State[vk_Menu] and 128) <> 0);
end;

begin


  if (Msg.message = WM_MOUSEWHEEL) then
  begin
    ctrl:=FindControl(WindowFromPoint(Mouse.CursorPos));
    if ctrl is TScrollBox then
    begin
     if Msg.WParam < 0 then
        zDelta := -1 else zDelta := 1;
     with ctrl as TScrollBox do
     begin
       Handled := True;


       if ShiftDown then
       begin
         if not HorzScrollBar.IsScrollBarVisible
         or ((HorzScrollBar.Position <= 0) and  (zDelta > 0))
         or ((HorzScrollBar.Position = HorzScrollBar.Range - ClientWidth) and (zDelta < 0))
         then Exit;
  //       ScrollBy(zDelta,0);
         HorzScrollBar.Position := HorzScrollBar.Position - zDelta*(ClientWidth div 5);

       end
       else
       if CtrlDown then
       begin
         if pcMain.ActivePage <> tsSource then Exit;
         if Msg.WParam < 0 then
           Scale:= Scale * 2
         else
           Scale:= Scale / 2;

       end
       else
       begin
         if not VertScrollBar.IsScrollBarVisible
         or   ((VertScrollBar.Position = 0) and  (zDelta > 0))
         or ((VertScrollBar.Position = VertScrollBar.Range - ClientHeight) and (zDelta < 0))
         then Exit;
//         ScrollBy(0, zDelta);
         VertScrollBar.Position := VertScrollBar.Position - zDelta*(ClientHeight div 5);
       end;


     end;
end;

  end;
{
  if (Msg.message = wm_keydown) and (Msg.wParam = vk_shift) then
  begin
    SystemParametersInfo(SPI_SETMOUSESPEED,0, pointer(3) ,SPIF_SENDCHANGE);
  end;

  if (Msg.message = wm_keyup) and (Msg.wParam = vk_shift) then
  begin
//    SystemParametersInfo(SPI_SETMOUSESPEED,0, pointer(10) ,SPIF_SENDCHANGE);
    SystemParametersInfo(SPI_SETMOUSESPEED,0, pointer(fDefSpeed) ,SPIF_SENDCHANGE);
  end;
}
end;


procedure TMainForm.chbMirrorClick(Sender: TObject);
begin
  if (pcMain.ActivePageIndex = 1) then
    pcMainChange(nil)
end;


procedure TMainForm.ScanAuto;
var z,i,j,n,k,n3,qq,zzz,d:integer;
 ar:array of TPoint;
 ar1:array of TPoint;
 ar3:array of TPoint;
 sel1:array of integer;
 r,g,b:Byte;
 c:tColor;
 g1,g2:Integer;

 Img:TBitmap;
 Mask:array of Byte;
 Grp:array of Integer;
 GrpN:Integer;
 p_min,p_max, p_base,p_mid,p_base1,p_base2,p_base3:TPoint;
 p_cnt,rw:integer;
 a:double;
 s:string;


 procedure TestXY(x,y:integer);
 var i:integer;
    c:tColor;
    p:TPoint;
    sgn:integer;
 begin

   if (X <= 0) or (x >= Img.Width+1) or (y <= 0) or (y >= Img.Height+1) then
      Exit;

   if (Mask[x+(y-1)*Img.Width-1]=1) then
   Exit;

   if (X = 1) or (x = Img.Width) or (y = 0) or (y = Img.Height) then
   c := Img.Canvas.Pixels[ar[0].X,ar[0].Y]
   else
   c := Img.Canvas.Pixels[x,y];

   zzz := Abs(Round(GetRed(c)/16)-round(r/16))
     + Abs(Round(GetGreen(c)/16)-round(g/16))
     + Abs(Round(GetBlue(c)/16)-round(b/16));

   if cbFrameOrGround.ItemIndex=0 then
    sgn := 1
  else
    sgn := -1;

   if sgn*zzz <= sgn *2*TrackBar3.Position then
   begin
     ar[n].X := x;
     ar[n].y := y;
     Mask[x+(y-1)*Img.Width-1]:=1;
     inc(n);
   end
   else
     begin
       inc(n3);
       SetLength(ar3,n3);
       ar3[n3-1].X := x;
       ar3[n3-1].y := y;
       ProgressForm.DrawXY(x,y, RGB(0,0,0));
       for i:=0 to Length(sel1)-1 do

         if sel1[i]=-1 then
            sel1[i]:=n3-1
         else  begin
           p.X := seDeltaX.Value + round((Img.Width-seDeltaX.Value) /seCountX.Value * (0.5 + i mod seCountX.Value));
           p.y := seDeltaY.Value + round((Img.Height-seDeltaY.Value) /seCountY.Value * (0.5 + i div seCountX.Value));
           if sqr(ar3[n3-1].X - p.X)+sqr(ar3[n3-1].Y - p.Y) < sqr(ar3[sel1[i]].X - p.X)+sqr(ar3[sel1[i]].Y - p.Y)
           then
            sel1[i]:=n3-1;
         end;
     end;
 end;
begin
  SetLength(sel1, seCountX.Value*seCountY.Value);
  for i:=0 to seCountX.Value*seCountY.Value-1 do
    sel1[i] := -1;

  ProgressForm := TProgressForm.Create(Self);

  try
    Img := TBitmap.Create;

    if tbOnecard.Down then
    begin
      Img.Width := Round(Shape2.Width/Scale);
      Img.Height := Round(Shape2.Height/Scale);
      Img.Canvas.CopyRect(Rect(0,0,Img.Width, Img.Height),
        imgSource.Picture.Bitmap.Canvas,
        rect(Round((ScrollBox1.HorzScrollBar.Position + Shape2.Left)/Scale),
             Round((ScrollBox1.VertScrollBar.Position +Shape2.Top)/Scale),
             Round((ScrollBox1.HorzScrollBar.Position + Shape2.Left)/Scale) + Img.Width,
             Round((ScrollBox1.VertScrollBar.Position + Shape2.Top)/Scale) +Img.Height));
//      Img.SaveToFile('d:\shp.bmp');
    end
    else begin
      Img.Assign(imgSource.Picture.Bitmap);
  Img.Width := imgSource.Picture.Bitmap.Width;
  Img.Height := imgSource.Picture.Bitmap.Height;
    end;
    ProgressForm.Init(img.Width, img.Height);
    ProgressForm.Caption := 'Progress: Scaning';
    ProgressForm.Show;
{
       for i:=0 to Length(sel1)-1 do
       begin
           ProgressForm.CircXY(
           seDeltaX.Value + round((imgSource.Width-seDeltaX.Value) /seCountX.Value * (0.5 + i mod seCountX.Value)),
           seDeltaY.Value + round((imgSource.Height-seDeltaY.Value) /seCountY.Value * (0.5 + i div seCountX.Value)),
           RGB(255,0,255));
       end;
}


  SetLength(RedRects,0);
  SetLength(BlueRects,0);
  SetLength(YellowRects,0);

  qq:=0;
  z := Min(Img.Width, Img.Height) div 10;

  SetLength(ar, (Img.Width + Img.Height)*2+4);
  SetLength(Mask, (Img.Width+1) * (Img.Height+1));
  FillChar(Mask[0],(Img.Width+1) * (Img.Height+1),0);

    ar[0].X := x+1;
    ar[0].Y := y+1;

  if cbFrameOrGround.ItemIndex=0 then
    c:=Img.Canvas.Pixels[ar[0].X,ar[0].Y]
  else
    c:=shFrameColor.Pen.Color;
  r := GetRed(c);
  g := GetGreen(c);
  b := GetBlue(c);


  d := 3;
  n := 1;
  n3 := 0;

  {

  ar[0].X := 1;
  ar[0].Y := 1;
  TestXY(1, 1);
  TestXY(1+(Img.Width div 3-1) *3, (1+Img.Height div 3-1) *3);


    ar[0].X := 1;
    ar[0].Y := 1;


  for I := 0 to Img.Width div 3 do
  begin
    TestXY(1+i*3,1);
  end;


  for I := 0 to Img.Height div 3  do
  begin
    TestXY(Img.Width,1+i*3);
  end;
  for I := 0 to Img.Width div 3 do
  begin
    TestXY(Img.Width - (1+i*3),Img.Height);
  end;

  for I := 0 to Img.Height div 3 do
  begin
    TestXY(1, Img.Height-(1+i*3));
  end;
 }




  while n > 0 do
  begin
    if Stop then Abort;
    SetLength(ar1, n);
    for i:= 0 to Length(ar1)-1 do
      ar1[i]:=ar[i];

    n := 0;
    for i:= 0 to Length(ar1)-1 do
    begin
      if Stop then Abort;
      TestXY(ar1[i].X-d, ar1[i].Y);
      TestXY(ar1[i].X+d, ar1[i].Y);
      TestXY(ar1[i].X, ar1[i].Y-d);
      TestXY(ar1[i].X, ar1[i].Y+d);

    end;
    inc(qq);
  end;

{
  for I := 0 to img.Width do
  begin
    inc(n3);
    SetLength(Ar3,n3);
    Ar3[n3-1].X := i;
    Ar3[n3-1].Y := 0;
  end;

  for I := 0 to img.Height do
  begin
    inc(n3);
    SetLength(Ar3,n3);
    Ar3[n3-1].X := img.Width;
    Ar3[n3-1].Y := i;
  end;

  for I := 0 to img.Width do
  begin
    inc(n3);
    SetLength(Ar3,n3);
    Ar3[n3-1].X := img.Width - i;
    Ar3[n3-1].Y := img.Height;
  end;

  for I := 0 to img.Height do
  begin
    inc(n3);
    SetLength(Ar3,n3);
    Ar3[n3-1].X := 0;
    Ar3[n3-1].Y := img.Height - i;
  end;
}


///

  SetLength(Grp,n3);
  GrpN := 0;

  ProgressForm.Caption := 'Progress: Grouping';
  ProgressForm.Invalidate;

  for i:=0 to n3-1 do
    Grp[i]:=-1;

  for i:=0 to n3-1 do
  begin
      if Stop then Abort;
      ProgressForm.DrawXY(ar3[i].X,ar3[i].Y, RGB($ff,0,0));
    if Grp[i] = -1 then
    begin
      Inc(GrpN);
      Grp[i]:=GrpN;
    end;

    for j:=i+1 to n3-1 do
    if (Abs(ar3[i].X-ar3[j].X)<=d) and (Abs(ar3[i].y-ar3[j].y)<=d) then
    begin
      if Stop then Abort;
      if Grp[j]=-1 then
        Grp[j] := Grp[i]
      else
      if Grp[j] <> Grp[i] then
      begin
        g1 := Min(Grp[i], Grp[j]);
        g2 := Max(Grp[i], Grp[j]);
        for k := 0 to n3-1 do
          if Grp[k]=g2 then Grp[k]:=g1;
      end;

    end;
  end;


  ProgressForm.Caption := 'Progress: Arrange';
  ProgressForm.Invalidate;

  rw:=0;
  for k:=0 to Length(sel1)-1 do
  begin
    j := Grp[sel1[k]];
    p_cnt:=0;

    for i:= 0 to n3-1 do
    if Grp[i] = j then
    begin
      if Stop then Abort;
      ProgressForm.DrawXY(ar3[i].X,ar3[i].Y, RGB(0,$ff,0));
      inc(p_cnt);
      if p_cnt=1 then
      begin
        p_min := ar3[i];
        p_max := ar3[i];
      end
      else
      begin
        p_min.X := Min(p_min.X, ar3[i].X);
        p_min.Y := Min(p_min.Y, ar3[i].Y);
        p_max.X := Max(p_max.X, ar3[i].X);
        p_max.Y := Max(p_max.Y, ar3[i].Y);
      end;
    end;


    p_mid.X := (p_min.X + p_max.X)div 2;
    p_mid.y := (p_min.y + p_max.y)div 2;

    p_base:= p_mid;
    p_base1:= p_mid;
    p_base2:= p_mid;




    for i:= 0 to n3-1 do
      if Grp[i] = j then
      begin
        if Stop then Abort;

         if ((ar3[i].X < p_mid.X) and (seSizeY.Value>=seSizeX.Value))
         then
          if Sqr(ar3[i].X-p_mid.X)+Sqr(ar3[i].Y-p_mid.Y) < SQR((seSizeX.Value + seSizeY.Value)/4) THEN
          begin
            if  (ar3[i].y > p_mid.y) then
              if Sqr(p_base1.X-p_mid.X)+Sqr(p_base1.Y-p_mid.y) < Sqr(ar3[i].X-p_mid.X)+Sqr(ar3[i].Y-p_mid.Y) then
                p_base1:= ar3[i];

            if (ar3[i].y < p_mid.y) then
              if Sqr(p_base2.X-p_mid.X)+Sqr(p_base2.Y-p_mid.y) < Sqr(ar3[i].X-p_mid.X)+Sqr(ar3[i].Y-p_mid.Y) then
                p_base2:= ar3[i];
          end;

         if ((ar3[i].Y < p_mid.Y) and (seSizeY.Value<seSizeX.Value))
         then
          if Sqr(ar3[i].X-p_mid.X)+Sqr(ar3[i].Y-p_mid.Y) < SQR((seSizeX.Value + seSizeY.Value)/4) THEN
          begin
            if  (ar3[i].x > p_mid.x) then
              if Sqr(p_base1.X-p_mid.X)+Sqr(p_base1.Y-p_mid.y) < Sqr(ar3[i].X-p_mid.X)+Sqr(ar3[i].Y-p_mid.Y) then
                p_base1:= ar3[i];

            if (ar3[i].x < p_mid.x) then
              if Sqr(p_base2.X-p_mid.X)+Sqr(p_base2.Y-p_mid.y) < Sqr(ar3[i].X-p_mid.X)+Sqr(ar3[i].Y-p_mid.Y) then
                p_base2:= ar3[i];
          end;


      end;

     if ((p_max.X-p_min.x)*(p_max.Y-p_min.Y) > seSizeX.Value * seSizeY.Value * 0.8)
       and ((p_max.X-p_min.x)*(p_max.Y-p_min.Y) < seSizeX.Value * seSizeY.Value * 1.5)
    then
    begin


      if tbOnecard.Down then
      begin
         p_min.X := p_min.X + round((ScrollBox1.HorzScrollBar.Position + Shape2.Left)/Scale);
         p_min.Y := p_min.Y + round((ScrollBox1.VertScrollBar.Position + Shape2.Top)/Scale);
         p_max.X := p_max.X + round((ScrollBox1.HorzScrollBar.Position + Shape2.Left)/Scale);
         p_max.Y := p_max.Y + round((ScrollBox1.VertScrollBar.Position + Shape2.Top)/Scale);
         p_mid.X := (p_min.X + p_max.X)div 2;
         p_mid.y := (p_min.y + p_max.y)div 2;
         p_base1.X := p_base1.X+ round((ScrollBox1.HorzScrollBar.Position + Shape2.Left)/Scale);
         p_base1.Y := p_base1.y+ round((ScrollBox1.VertScrollBar.Position + Shape2.Top)/Scale);
         p_base2.X := p_base2.X+ round((ScrollBox1.HorzScrollBar.Position + Shape2.Left)/Scale);
         p_base2.Y := p_base2.y+ round((ScrollBox1.VertScrollBar.Position + Shape2.Top)/Scale);

         rw := sgCards.Row;
      end
      else begin

        rw := 1 + p_mid.X div ((img.Width - seDeltaX.Value) div seCountX.Value)
           + seCountX.Value * (p_mid.Y div ((img.Height - seDeltaY.Value) div seCountY.Value));
      end;

      if sgCards.RowCount < rw+1 then
        sgCards.RowCount := rw+1;

     SetLength(BlueRects, Length(BlueRects)+1);
     BlueRects[Length(BlueRects)-1]:=Rect(p_min.X, p_min.Y, p_max.X, p_max.Y);

     SetLength(YellowRects, Length(YellowRects)+1);
     YellowRects[Length(YellowRects)-1]:=rect(p_base1.X, p_base1.Y, p_base2.X, p_base2.Y);


       if p_base1.y = p_base2.Y then a:=90
       else
       begin
         if (seSizeY.Value>=seSizeX.Value) then
           a:=  180/ Pi * -ArcTan((p_base1.x - p_base2.x) / ((p_base1.y - p_base2.y)))
         else
           a := 180/ Pi * ArcTan((p_base1.y - p_base2.y) / ((p_base1.x - p_base2.x)));

       end;
{
       a:=  180/ Pi * -ArcTan((p_base1.x - p_base2.x) / ((p_base1.y - p_base2.y)));

       if (seSizeY.Value<seSizeX.Value) then
         a := a - 90;
}
       if Abs(a)> TrackBar1.Position*10 then  a:=0;

       sgCards.Cells[0,rw] := IntToStr(1 + (rw-1) div seCountX.Value)+':'+IntToStr(1 + (rw-1) mod seCountX.Value);

       if ((p_max.X-p_min.X) > (p_max.Y-p_min.Y)) and (seSizeX.Value < seSizeY.Value) then
         a := a + 90;

       if ((p_max.X-p_min.X) < (p_max.Y-p_min.Y)) and (seSizeX.Value > seSizeY.Value) then
         a := a + 90;

       begin
         sgCards.Cells[3,rw] := FormatFloat('0.0000', a);

         sgCards.Cells[1,rw] := FormatFloat('0', p_mid.X
           - seSizeX.Value/2 * cos(a/180*Pi)
           + seSizey.Value/2 * sin(a/180*Pi));

         sgCards.Cells[2,rw] := FormatFloat('0', p_mid.Y
           - seSizeY.Value/2 * cos(a/180*Pi)
           - seSizex.Value/2 * sin(a/180*Pi));
       end

    end

    else begin
     SetLength(RedRects, Length(RedRects)+1);
     RedRects[Length(RedRects)-1]:=Rect(p_min.X, p_min.Y, p_max.X, p_max.Y);
  end;
  end;

  finally
    Img.free;
    FreeAndNil(ProgressForm);
  end;


end;

procedure TMainForm.Resetgrid1Click(Sender: TObject);
var i,j:Integer;
begin
  sgCards.Cells[0,0] := '¹';
  sgCards.Cells[1,0] := 'X';
  sgCards.Cells[2,0] := 'Y';
  sgCards.Cells[3,0] := 'a';

  sgCards.RowCount := 1 + seCountX.Value * seCountY.Value;
  for i := 1 to seCountY.Value do
    for j := 1 to seCountX.Value do
    begin
      sgCards.Cells[0,j + (i-1)*seCountX.Value] := IntToStr(i)+':'+IntToStr(j);
      if sgCards.Row=j + (i-1)*seCountX.Value then
        sgCards.Cells[0,j + (i-1)*seCountX.Value] := sgCards.Cells[0,j + (i-1)*seCountX.Value] + '  ->';

      sgCards.Cells[1,j + (i-1)*seCountX.Value] := IntToStr(seDeltaX.Value + seSizeX.Value * (j-1));
      sgCards.Cells[2,j + (i-1)*seCountX.Value] := IntToStr(seDeltaY.Value + seSizeY.Value * (i-1));
      sgCards.Cells[3,j + (i-1)*seCountX.Value] := '0';
    end;

end;

procedure TMainForm.Autodetect1Click(Sender: TObject);
begin
  Resetgrid1Click(Sender);
  Stop := False;
//  Scale := 1;
  if imgSource.Picture.Bitmap.Width > 0 then
  ScanAuto(seDeltaX.Value div 2, seDeltaY.Value div 2)
end;

procedure TMainForm.SetScale(const Value: double);
var h,v:Integer;

begin
  if Value > 8 then exit;
  if (Value < FScale) and (imgSource.Width < ScrollBox1.ClientWidth) and (imgSource.Height < ScrollBox1.ClientHeight)
  then exit;

  h:=ScrollBox1.HorzScrollBar.Position;
  v:=ScrollBox1.VertScrollBar.Position;
  if FScale <> 0 then
  begin
    v := Round(v / FScale * Value);
    h := Round(h / FScale * Value);
  end;

  ScrollBox1.VertScrollBar.Position := 0;
  ScrollBox1.HorzScrollBar.Position := 0;
  imgSource.Left:=0;
  imgSource.Top:=0;


  FScale := Value;


  imgSource.AutoSize := False;
  imgSource.Stretch := True;
  imgSource.Width := Round(imgSource.Picture.Bitmap.Width * Scale);
  imgSource.Height := Round(imgSource.Picture.Bitmap.Height * Scale);

  ScrollBox1.VertScrollBar.Position := v;
  ScrollBox1.HorzScrollBar.Position := h;

  FrameBox.Repaint;
end;

procedure TMainForm.ToolButton20Click(Sender: TObject);
begin
  Timer1.Enabled := False;
  try
  Resetgrid1Click(Sender);
//  Scale := 1;
  Stop := False;
  if imgSource.Picture.Bitmap.Width > 0 then
    ScanAuto(seDeltaX.Value div 2+1, seDeltaY.Value div 2+1);

  FrameBox.Invalidate;
  Stop := False;
  finally
  Timer1.Enabled := True;
  end;
end;

procedure TMainForm.tbtRotateClick(Sender: TObject);
type
  TRGBArray = array[0..0] of TRGBTriple;
  pRGBArray = ^TRGBArray;
var
  oldRows, oldColumns: integer;
  rowIn, rowOut: pRGBArray;
  tmpBitmap, Bitmap: TBitmap;
begin
  Bitmap := imgSource.Picture.Bitmap;
  tmpBitmap := TBitmap.Create;

  tmpBitmap.Width := Bitmap.Height;
  tmpBitmap.Height := Bitmap.Width;
  tmpBitmap.PixelFormat := Bitmap.PixelFormat;

  for oldColumns := 0 to Bitmap.Width - 1 do
  begin
    rowOut := tmpBitmap.ScanLine[oldColumns];

    for oldRows := 0 to Bitmap.Height - 1 do
    begin
      rowIn := Bitmap.ScanLine[oldRows];
      rowOut[Bitmap.Height - oldRows - 1] := rowIn[oldColumns];
    end;
  end;
  imgSource.Picture.Assign(tmpBitmap);
  tmpBitmap.free;
  Scale := Scale;

end;

procedure TMainForm.tbtSplitClick(Sender: TObject);
var z,n:integer;
begin
  SplitForm.ImageSize := Point(imgSource.Picture.Bitmap.Width, imgSource.Picture.Bitmap.Height);

  SplitForm.DPI := seDPI.Value;
  if SplitForm.ShowModal=mrOk then
  begin


    if SplitForm.cfgPrint.Values['Split.Width']='max' then
    begin
      z := StrToIntDef(SplitForm.cfgPrint.Strings.Values['Page.Width'],0)
         - StrToIntDef(SplitForm.cfgPrint.Strings.Values['Margins.Left'],0)
         - StrToIntDef(SplitForm.cfgPrint.Strings.Values['Margins.Right'],0)
         - 2*StrToIntDef(SplitForm.cfgPrint.Values['Bleed'],0);
      if z<1 then abort;
      seCountX.Value := Ceil(imgSource.Picture.Bitmap.Width/SplitForm.DPI * 25.4 / z);
      seSizeX.Value := imgSource.Picture.Bitmap.Width div seCountX.Value;
    end
    else begin
      z := StrToIntDef(SplitForm.cfgPrint.Values['Split.Width'],0);
      if z<1 then abort;
      seCountX.Value := Ceil(imgSource.Picture.Bitmap.Width/SplitForm.DPI * 25.4 / z);
      seSizeX.Value := Round(z * SplitForm.DPI / 25.4) ;
    end;

    if SplitForm.cfgPrint.Values['Split.Height']='max' then
    begin
      z := StrToIntDef(SplitForm.cfgPrint.Strings.Values['Page.Height'],0)
         - StrToIntDef(SplitForm.cfgPrint.Strings.Values['Margins.Top'],0)
         - StrToIntDef(SplitForm.cfgPrint.Strings.Values['Margins.Bottom'],0)
         - 2*StrToIntDef(SplitForm.cfgPrint.Values['Bleed'],0);
      if z<1 then abort;
      seCountY.Value := Ceil(imgSource.Picture.Bitmap.Height/SplitForm.DPI * 25.4 / z);
      seSizeY.Value := imgSource.Picture.Bitmap.Height div seCountY.Value;
    end
    else begin
      z := StrToIntDef(SplitForm.cfgPrint.Values['Split.Height'],0);
      if z<1 then abort;
      seCountY.Value := Ceil(imgSource.Picture.Bitmap.Height/SplitForm.DPI * 25.4 / z);
      seSizeY.Value := round(z * SplitForm.DPI / 25.4);
    end;
    seDeltaX.Value := round(-StrToIntDef(SplitForm.cfgPrint.Values['Bleed'],0)* SplitForm.DPI / 25.4);
    seDeltaY.Value := round(-StrToIntDef(SplitForm.cfgPrint.Values['Bleed'],0)* SplitForm.DPI / 25.4);

    Resetgrid1Click(nil);

    seSizeX.Value := round(seSizeX.Value + 2 * StrToIntDef(SplitForm.cfgPrint.Values['Bleed'],0) * SplitForm.DPI / 25.4) ;
    seSizeY.Value := round(seSizeY.Value + 2 * StrToIntDef(SplitForm.cfgPrint.Values['Bleed'],0) * SplitForm.DPI / 25.4) ;

    seFrameX.Value := 0;
    seFrameY.Value := 0;
    chbRoundRect.Checked := False;
    chbCuttingLine.Checked := False;
    chbSplit.Checked := True;
    seBorder.Value :=0;


  end;
end;

procedure TMainForm.ToolButton16Click(Sender: TObject);
begin
  Resetgrid1Click(Sender);
end;


function TMainForm.Zm(P: TPoint): TPoint;
begin
  Result := Point(Round(p.X * Scale),Round(p.y * Scale))

end;

procedure TMainForm.FrameBoxPaint(Sender: TObject);
var
 cnv:TCanvas;
 i:integer;
begin
//  FrameBox.Canvas.Lock;
  cnv:=FrameBox.Canvas;

  if tbHideLines.Down then exit;


  cnv.Pen.Width := 2;
  cnv.Pen.Style := psSolid;
  cnv.Brush.Style := bsClear;

  cnv.Pen.Color := clRed;
  for i := 0 to Length(RedRects)-1 do
    cnv.Rectangle(
      Zm(RedRects[i].TopLeft).x,
      Zm(RedRects[i].TopLeft).y,
      Zm(RedRects[i].BottomRight).x,
      Zm(RedRects[i].BottomRight).y);

  for i := 0 to Length(BlueRects)-1 do
  begin
    cnv.Pen.Color := clBlue;

    cnv.Rectangle(
      Zm(BlueRects[i].TopLeft).x,
      Zm(BlueRects[i].TopLeft).y,
      Zm(BlueRects[i].BottomRight).x,
      Zm(BlueRects[i].BottomRight).y);


    cnv.Pen.Color := clYellow;

    cnv.Polygon([
      Zm(YellowRects[i].TopLeft),
      Zm(YellowRects[i].BottomRight),
      Zm(Point((BlueRects[i].Left+BlueRects[i].Right) div 2,(BlueRects[i].Top+BlueRects[i].Bottom) div 2))]
    );

  end;


{
  if GreenStyle = psSolid then
  begin
    cnv.Pen.Style := psDot;
    cnv.Pen.Color := ColorBox1.SelectedColor;
  end
  else
  begin
    cnv.Pen.Style := psSolid;
    cnv.Pen.Color := ColorBox2.Selected;
   end;
 GreenStyle := cnv.Pen.Style;


  cnv.Polyline([Zm(p1),Zm(p2),Zm(p4),Zm(p3),Zm(p1)]);
  if (p1.X<>p11.X) or (p2.X<>p12.X)or (p3.X<>p13.X)or (p4.X<>p14.X)
  or (p1.y<>p11.y) or (p2.y<>p12.y)or (p3.y<>p13.y)or (p4.y<>p14.y)
  then
  cnv.Polyline([Zm(p11),Zm(p12),Zm(p14),Zm(p13),Zm(p11)]);
}
end;


procedure TMainForm.ToolButton8Click(Sender: TObject);
begin
  Resetgrid1Click(nil);
  CalcCenter;
end;

procedure TMainForm.seShiftChange(Sender: TObject);
begin
  Timer1Timer(nil);
end;

procedure TMainForm.seSizeXChange(Sender: TObject);
begin
  FrameBox.Repaint;
end;

procedure TMainForm.seSizeYChange(Sender: TObject);
begin
  FrameBox.Repaint;
end;

procedure TMainForm.SetStop(const Value: Boolean);
begin
  FStop := Value;
  if Stop then Abort;
end;

procedure TMainForm.tbHideLinesClick(Sender: TObject);
begin
  FrameBox.Invalidate
end;

procedure TMainForm.tbOnecardClick(Sender: TObject);
begin
  if not tbOnecard.Down then
  begin
    Shape2.Visible := false;
//    Shape2.Width := Round(Max(seSizeX.Value,seSizeY.Value)*1.03);
  end;
end;

procedure TMainForm.FrameBoxMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if ssRight in Shift then
  begin
    fMove.X := x;
    fMove.Y := y;
  end;
  if Shape2.Visible then
  begin
//    ScanAuto;
//    tbOnecard.Down := False;
//    Shape2.Visible := false;
  end;
end;

procedure TMainForm.Shape2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    ScanAuto(round(X/Scale), Round(Y/Scale));
    tbOnecard.Down := False;
    Shape2.Visible := false;
end;


procedure TMainForm.sgCardsSetEditText(Sender: TObject; ACol, ARow: Integer;
  const Value: String);
begin
  if ACol < 3 then
    CalcCenter
  else
  if (cbAnchor.ItemIndex=1)and(ACol=3) then
  begin
     CenterAxis(StrToFloatDef(Value,0));
  end;
  FrameBox.Repaint;
end;

procedure TMainForm.seFrameXChange(Sender: TObject);
begin
  FrameBox.Repaint;
end;

procedure TMainForm.seFrameYChange(Sender: TObject);
begin
  FrameBox.Repaint;
end;

procedure TMainForm.Action8Execute(Sender: TObject);
begin
  Scale:= Scale / 2;
end;

procedure TMainForm.Action7Execute(Sender: TObject);
begin
  Scale:= Scale * 2;
end;

procedure TMainForm.SpeedButton1Click(Sender: TObject);
begin
chbCorners.Checked := True;
end;

procedure TMainForm.Splitter1Moved(Sender: TObject);
begin
  FOldCorned := '-';
end;

procedure TMainForm.chbCornersClick(Sender: TObject);
begin
  imgPreview.Visible := chbCorners.Checked;
  Splitter1.Visible := chbCorners.Checked;
  Splitter1.Top := imgPreview.top-5;
  seShift.Visible := chbCorners.Checked;

end;

procedure TMainForm.chbDimensionClick(Sender: TObject);
begin
  if chbDimension.Checked then
    gbDimension.Height := 128
  else
    gbDimension.Height := chbDimension.Height+2;
  lblX.Visible := chbDimension.Checked;
  lblY.Visible := chbDimension.Checked;
end;

procedure TMainForm.chbResultClick(Sender: TObject);
begin
  if chbResult.Checked then
    gbResult.Height := 176
  else
    gbResult.Height := chbResult.Height+2;

  seBorder.Visible := chbResult.Checked;
  shFrameColor.Visible := chbResult.Checked;

end;

procedure TMainForm.Splitter2Moved(Sender: TObject);
begin
  FOldCorned := '-';

end;


procedure TMainForm.CalcCenter;
var x, y, a:double;
begin

  x := StrToFloatDef(sgCards.Cells[1, sgCards.Row],0);
  y := StrToFloatDef(sgCards.Cells[2, sgCards.Row],0);
  a := StrToFloatDef(sgCards.Cells[3, sgCards.Row],0);

  Cntr.X := Round(x + (seSizeX.Value/2*Cos(a/180*Pi))
      - (seSizeY.Value/2*Sin(a/180*Pi)));
  Cntr.Y := Round(y + (seSizeX.Value/2*sin(a/180*Pi)
      + (seSizeY.Value/2*Cos(a/180*Pi))));
end;

procedure TMainForm.CenterAxis(a:double);
var x, y:double;
begin
//  a := StrToFloatDef(sgCards.Cells[3, sgCards.Row],0);

  x := Cntr.X
     - ((seSizeX.Value/2)*Cos((a)/180*Pi))
     + ((seSizeY.Value/2)*Sin((a)/180*Pi));
  y := Cntr.Y
     - (seSizeX.Value/2*sin((a)/180*Pi)
     + (seSizeY.Value/2*Cos((a)/180*Pi)));

  sgCards.Cells[1, sgCards.Row] := IntToStr(Round(x));
  sgCards.Cells[2, sgCards.Row] := IntToStr(Round(y));
//  sgCards.Invalidate;
//  Application.ProcessMessages;


end;

procedure TMainForm.sgCardsSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var i:integer;
begin
  CalcCenter;
  for i:= 0 to sgCards.RowCount - 1 do
    if pos('  ->',sgCards.Cells[0,i])>0 then
      sgCards.Cells[0,i] := StringReplace(sgCards.Cells[0,i], '  ->','',[]);
  sgCards.Cells[0,Arow]:=sgCards.Cells[0,Arow] +'  ->';
end;


initialization
  SystemParametersInfo(SPI_GETMOUSESPEED,0, @fDefSpeed, 0);

finalization
   SystemParametersInfo(SPI_SETMOUSESPEED,0, @fDefSpeed ,SPIF_SENDCHANGE);

end.
