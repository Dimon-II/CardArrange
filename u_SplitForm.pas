unit u_SplitForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ValEdit, Printers, ExtCtrls;

type
  TSplitForm = class(TForm)
    dlgPrintCfg: TPrinterSetupDialog;
    cfgPrint: TValueListEditor;
    pnDown: TPanel;
    btnOk: TButton;
    btnCancel: TButton;
    procedure FormCreate(Sender: TObject);
    procedure cfgPrintEditButtonClick(Sender: TObject);
  private
    FImageSize: TPoint;
    FDPI: integer;
    procedure SetImageSize(const Value: TPoint);
    procedure SetDPI(const Value: integer);
    { Private declarations }
  public
    { Public declarations }
    procedure PrintInit;
    property ImageSize:TPoint read FImageSize write SetImageSize;
    property DPI:integer read FDPI write SetDPI;
  end;

var
  SplitForm: TSplitForm;

implementation

{$R *.dfm}

procedure TSplitForm.cfgPrintEditButtonClick(Sender: TObject);
begin
  if cfgPrint.Strings.Names[cfgPrint.Row-1]='Printer' then

  if dlgPrintCfg.Execute then
    PrintInit;
end;

procedure TSplitForm.FormCreate(Sender: TObject);
begin
  cfgPrint.ColWidths[0]:=90;
  cfgPrint.Strings.Values['Bleed']:='0';
  cfgPrint.Strings.Values['Split.Width']:='max';
  cfgPrint.Strings.Values['Split.Height']:='max';

  cfgPrint.Strings.Values['Image.DPI']:='300';
  cfgPrint.ItemProps['Image.DPI'].ReadOnly := True;
  cfgPrint.Strings.Values['Image.Width']:='0';
  cfgPrint.ItemProps['Image.Width'].ReadOnly := True;
  cfgPrint.Strings.Values['Image.Height']:='0';
  cfgPrint.ItemProps['Image.Height'].ReadOnly := True;


  PrintInit;
end;

procedure TSplitForm.PrintInit;
var
  PixPerInchX,PixPerInchY,PageWidthInMM,PageHeightInMM,PhysOffsetX,PhysOffsetY,
  PageResX,PageResY,PhysPageWidth,PhysPageHeigth:integer;
  Margins:TRect;

procedure GetPrinterInfo;
var
  DC:HDC;
begin
  DC:=Printer.Handle;
  PixPerInchX:=GetDeviceCaps(DC,LOGPIXELSX);
  PixPerInchY:=GetDeviceCaps(DC,LOGPIXELSY);
  PageWidthInMM:=GetDeviceCaps(DC,HORZSIZE);
  PageHeightInMM:=GetDeviceCaps(DC,VERTSIZE);

  PhysOffsetX:=GetDeviceCaps(DC,PHYSICALOFFSETX);
  PhysOffsetY:=GetDeviceCaps(DC,PHYSICALOFFSETY);

  PhysPageWidth:=GetDeviceCaps(DC,PHYSICALWIDTH);
  PhysPageHeigth:=GetDeviceCaps(DC,PHYSICALHEIGHT);

  PageResX:=GetDeviceCaps(DC,HORZRES);
  PageResY:=GetDeviceCaps(DC,VERTRES);

  // границы печати
  Margins.Top:=round(PhysOffsetY/PixPerInchY*25.4);
  Margins.Left:=round(PhysOffsetX/PixPerInchX*25.4);

  Margins.Bottom:=round((PhysPageHeigth-PageResY-PhysOffsetY)/PixPerInchY*25.4);
  Margins.Right:=round((PhysPageWidth-PageResX-PhysOffsetX)/PixPerInchX*25.4);
end;
begin
  GetPrinterInfo;
  cfgPrint.Strings.Values['Printer']:=Printer.Printers[Printer.PrinterIndex];
  cfgPrint.ItemProps['Printer'].EditStyle := esEllipsis;
  cfgPrint.ItemProps['Printer'].ReadOnly := True;

  cfgPrint.Strings.Values['Page.Width']:= Format('%d',[round(PhysPageWidth/PixPerInchX*25.4)]);
  cfgPrint.Strings.Values['Page.Height']:= Format('%d',[round(PhysPageHeigth/PixPerInchY*25.4)]);
  cfgPrint.Strings.Values['Margins.Top']:= Format('%d',[Margins.Top]);
  cfgPrint.Strings.Values['Margins.Left']:= Format('%d',[Margins.Left]);
  cfgPrint.Strings.Values['Margins.Right']:= Format('%d',[Margins.Right]);
  cfgPrint.Strings.Values['Margins.Bottom']:= Format('%d',[Margins.Bottom]);
  cfgPrint.Strings.Values['Print size']:= Format('%d x %d',[PageWidthInMM,PageHeightInMM]);
  cfgPrint.ItemProps['Print size'].ReadOnly := True;
end;

procedure TSplitForm.SetDPI(const Value: integer);
begin
  FDPI := Value;
  cfgPrint.Strings.Values['Image.DPI']:=Format('%d',[Value]);
  if Value<>0 then
  begin
    cfgPrint.Strings.Values['Image.Width'] := Format('%d',[Round(FImageSize.X/DPI*25.4)]);
    cfgPrint.Strings.Values['Image.Height'] := Format('%d',[Round(FImageSize.Y/DPI*25.4)]);
  end;
end;

procedure TSplitForm.SetImageSize(const Value: TPoint);
begin
  FImageSize := Value;
end;

end.
