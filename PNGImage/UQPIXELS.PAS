unit UQPixels;
// Fast access to TBitmap pixels
// © Boris Novgorodov, Novosibirsk, mbo@mail.ru
// Alexey Radionov, Ulyanovsk
// 2003

interface
uses Windows, Graphics;

type
  TLogPal = record
    palVersion: Word;
    palNumEntries: Word;
    palPalEntry: array[0..255] of TPaletteEntry;
  end;

  TSetPixelsMethod = procedure(X, Y: Integer; const Value: TColor) of object;
  register;
  TGetPixelsMethod = function(X, Y: Integer): TColor of object;
  register;

  TQuickPixels = class
  private
    FBitmap: TBitmap;
    FWidth, FHeight: Integer;
    FBPP: Integer;
    FStart: Integer;
    FDelta: Integer;
    FPixelFormat: TPixelFormat;
    FLogPal: TLogPal;
    FHPal: HPalette;
    FLastIndex: Integer;
    FLastColor: TColor;
    FByPaletteIndex: Boolean;
    FTrackBitmapChange: Boolean;

    function GetPixels(X, Y: Integer): TColor;
    function GetPixels1(X, Y: Integer): TColor;
    function GetPixels1Index(X, Y: Integer): TColor;
    function GetPixels4(X, Y: Integer): TColor;
    function GetPixels4Index(X, Y: Integer): TColor;
    function GetPixels8(X, Y: Integer): TColor;
    function GetPixels8Index(X, Y: Integer): TColor;
    function GetPixels15(X, Y: Integer): TColor;
    function GetPixels16(X, Y: Integer): TColor;
    function GetPixels24(X, Y: Integer): TColor;
    function GetPixels32(X, Y: Integer): TColor;

    procedure SetPixels(X, Y: Integer; const Value: TColor);
    procedure SetPixels1(X, Y: Integer; const Value: TColor);
    procedure SetPixels1Index(X, Y: Integer; const Value: TColor);
    procedure SetPixels4(X, Y: Integer; const Value: TColor);
    procedure SetPixels4Index(X, Y: Integer; const Value: TColor);
    procedure SetPixels8(X, Y: Integer; const Value: TColor);
    procedure SetPixels8Index(X, Y: Integer; const Value: TColor);
    procedure SetPixels15(X, Y: Integer; const Value: TColor);
    procedure SetPixels16(X, Y: Integer; const Value: TColor);
    procedure SetPixels24(X, Y: Integer; const Value: TColor);
    procedure SetPixels32(X, Y: Integer; const Value: TColor);

    procedure SetBPP(const Value: Integer);
    procedure SetByPaletteIndex(const Value: Boolean);
    procedure SetTrackBitmapChange(const Value: Boolean);
    procedure BitmapChange(Sender: TObject);
  public

    SetPixel: TSetPixelsMethod;
    GetPixel: TGetPixelsMethod;

    //установка соединения объекта с растром (DIB!)
    procedure Attach(Bmp: TBitmap);

    //вспомог. функция для получения цвета из палитры
    function PalIndex(const Color: TColor): Integer;
    destructor Destroy; override;

    property Width: Integer read FWidth;
    property Height: Integer read FHeight;

    //BitsPerPixel
    property BPP: Integer read FBPP;

   //при установке в True для режимов с палитрой вместо цвета работа идет с
   //индексом цвета в палитре
    property ByPaletteIndex: Boolean read FByPaletteIndex write
      SetByPaletteIndex;

    //основное свойство для доступа к растру
    property Pixels[X, Y: Integer]: TColor read GetPixels write SetPixels;
    default;

    //позволяет отслеживать изменения критических для доступа параметров растра:
    //размеров и цветового формата
    property TrackBitmapChange: Boolean read FTrackBitmapChange write
      SetTrackBitmapChange;
  end;

implementation

{ TQuickPixels }

procedure TQuickPixels.Attach(Bmp: TBitmap);
var
  DS: TDibSection;
begin
  FBPP := 0;
  FBitmap := Bmp;
  FWidth := FBitmap.Width;
  FHeight := FBitmap.Height;
  FPixelFormat := FBitmap.PixelFormat;
  case FPixelFormat of
    // для подобных режимов все просто
    pf1bit: SetBPP(1);
    pf4bit: SetBPP(4);
    pf8bit: SetBPP(8);
    pf15bit: SetBPP(15);
    pf16bit: SetBPP(16);
    pf24bit: SetBPP(24);
    pf32bit: SetBPP(32);
    pfCustom:
    // а здесь проведем небольшое исследование
      begin
        if GetObject(FBitmap.Handle, SizeOf(DS), @DS) > 0 then
        // получим информационный заголовок растра
          with DS, dsBmih do
            case biBitCount of
              16: case biCompression of
                  BI_RGB: SetBPP(15);
                  BI_BITFIELDS:
        // анализируем стандартные маски доступа к цветовым составляющим
                    begin
                      if dsBitFields[1] = $7E0 then
                        SetBPP(16);
                      if dsBitFields[1] = $3E0 then
                        SetBPP(15);
                    end;
                end;
              32: case biCompression of
                  BI_RGB: SetBPP(32);
                  BI_BITFIELDS: if dsBitFields[1] = $FF0000 then
                      SetBPP(32);
                end;
            end;
      end;
  end;
  Assert(FBPP > 0, 'Bitmap format is not supported');
  if FHPal <> 0 then
    DeleteObject(FHPal);
  if FBPP <= 8 then
  begin
    //скопируем палитру во внутреннее поле, чтобы не обращаться к FBitmap:
    FLogPal.palVersion := $300;
    FLogPal.palNumEntries := 1 shl FBPP;
    GetPaletteEntries(FBitmap.Palette, 0, FLogPal.palNumEntries,
      FLogPal.palPalEntry[0]);
    // создадим для данной логической палитры и HPalette, что нам потребуется
    //при поиске ближайшего цвета
    FHPal := CreatePalette(PLogPalette(@FLogPal)^);
    FLastColor := $7FFFFFF;
  end;
  //базовый адрес блока данных
  FStart := Integer(FBitmap.Scanline[0]);
  //разность между адресами соседних строк развертки растра (обычно отриц.)
  FDelta := Integer(FBitmap.Scanline[1]) - FStart;
  if FTrackBitmapChange then
    FBitmap.OnChange := BitmapChange;
end;

destructor TQuickPixels.Destroy;
begin
  DeleteObject(FHPal);
  inherited;
end;

procedure TQuickPixels.SetPixels1(X, Y: Integer; const Value: TColor);
asm
  push ebx
  push esi
  mov esi,[ebp+8]   //цвет
  cmp esi,[eax].FLastColor
  //проверка, не использовался ли в прошлый раз этот же цвет
  jz @@TheSame
  //нет - ищем ближайший в палитре
  mov [eax].FLastColor,esi    //запомним цвет
  push ecx
  push edx
  push eax
  push esi
  mov eax,[eax].FHPal
  push eax
  call GetNearestPaletteIndex
  mov ebx,eax
  pop eax
  pop edx
  pop ecx
  mov [eax].FLastIndex,ebx
  jmp @@SetCol
@@TheSame:
  //да - используем сохраненный индекс
  mov ebx,[eax].FLastIndex
@@SetCol:
  mov esi,[eax].FDelta
  imul esi,ecx
  add esi,[eax].FStart
  mov eax,edx
  shr eax, 3   //X div 8
  add esi,eax  //адрес нужного байта FStart + FDelta * Y + (X Div 8);
  mov eax,[esi] //получили байт с данными о 8 точках
  mov ecx,edx
  and ecx, 7   //X mod 8
  mov edx, $80
  shr edx,cl   //маска для нужного бита
  or ebx,ebx
  jz @@IsZero
  or eax,edx   //установка бита в 1
  jmp @@SetByte
@@IsZero:
  not edx
  and eax,edx  //сброс бита в 0
@@SetByte:
  mov [esi],al   //запись байта с измененной точкой
  pop esi
  pop ebx
end;

procedure TQuickPixels.SetPixels1Index(X, Y: Integer; const Value: TColor);
asm
  push ebx
  push esi
  mov ebx,[ebp+8]
  mov esi,[eax].FDelta
  imul esi,ecx
  add esi,[eax].FStart
  mov eax,edx
  shr eax, 3
  add esi,eax
  mov eax,[esi]
  mov ecx,edx
  and ecx, 7
  mov edx, $80
  shr edx,cl
  or ebx,ebx
  jz @@IsZero
  or eax,edx
  jmp @@SetByte
@@IsZero:
  not edx
  and eax,edx
@@SetByte:
  mov [esi],al
  pop esi
  pop ebx
end;

procedure TQuickPixels.SetPixels4(X, Y: Integer; const Value: TColor);
asm
  push esi
  mov esi,ecx
  push ebx
  imul esi, [eax].FDelta
  mov ecx,Value
  mov ebx,[eax].FLastIndex  //сохраненный индекс
  add esi,[eax].FStart
  cmp ecx, [eax].FLastColor
  jz @@SetCol
  mov [eax].FLastColor,ecx
  mov ebx,eax    //сохраним Self
  push edx
  push ecx
  push [eax].FHPal
  call GetNearestPaletteIndex
  xchg ebx,eax     //в EBX - найденный индекс цвета
  pop edx
  mov [eax].FLastIndex,ebx
@@SetCol:
  shr edx, 1      //X div 2
  mov ecx, $F0
  lea esi,[esi+edx]   //FStart + FDelta * Y + (X Div 2);
  jc @@SetByte
  //флаг переноса, свидетельствующий о нечетности,
  // устанавливается при выполнении shr
  mov ecx, $0f
  shl ebx, 4 //для четных точек устанавливаем старший полубайт
@@SetByte:
  mov eax,[esi]  //в AL - исходный байт, соотв. двум точкам
  and eax,ecx    //обнулим устанавливаемый полубайт
  or eax,ebx     //установим новое значение этого полубайта
  pop ebx
  mov [esi],al   //вернем измененный байт на свое место
  pop esi
end;

procedure TQuickPixels.SetPixels4Index(X, Y: Integer; const Value: TColor);
asm
  push ebx
  push esi
  mov ebx,[ebp+8]
  mov esi,[eax].FDelta
  imul esi,ecx
  add esi,[eax].FStart
  mov eax,edx
  shr eax, 1
  add esi,eax
  mov eax,[esi]
  and edx, 1
  jz @@IsEven
  and eax, $F0
  or eax,ebx
  jmp @@SetByte
@@IsEven:
  and eax, $0F
  shl ebx, 4
  or eax,ebx
@@SetByte:
  mov [esi],al
  pop esi
  pop ebx
end;

procedure TQuickPixels.SetPixels8(X, Y: Integer; const Value: TColor);
asm
  push ebx
  push esi
  imul ecx,[eax].FDelta
  mov esi,[ebp+8]  //Value
  add ecx,[eax].FStart    //FStart + FDelta * Y
  cmp esi,[eax].FLastColor
  jz @@TheSame
  mov [eax].FLastColor,esi  //запомним цвет
  push ecx
  push edx
  push eax
  push esi
  mov eax,[eax].FHPal
  push eax
  //сохраняем регистры, нужные для вызова функции параметра укладываем в стек
  //в порядке, необходимом для соглашения stdcall
  call GetNearestPaletteIndex
  mov ebx,eax  //результат функции - индекс цвета
  pop eax
  pop edx
  pop ecx
  mov [eax].FLastIndex,ebx  //запомним индекс последнего цвета
  jmp @@SetCol
@@TheSame:
  mov ebx,[eax].FLastIndex
  //цвет с прошлого вызова остался таким же, индекс его уже хранится в поле FLastIndex
@@SetCol:
  pop esi
  mov [ecx+edx],bl
  //запишем байт индекса по вычисленному ранее адресу + X
  pop ebx
end;

procedure TQuickPixels.SetPixels8Index(X, Y: Integer; const Value: TColor);
asm
  imul ecx,[eax].FDelta
  add ecx,[eax].FStart
  mov eax,[ebp+8]
  mov [ecx+edx], al   //PByte(FStart + FDelta * Y + X)^ := Value (т.е. индекс)
end;

procedure TQuickPixels.SetPixels15(X, Y: Integer; const Value: TColor);
//PWord(FStart + FDelta * Y + (X Shl 1))^ :=
//((Value And $F8) Shl 7) or ((Value And $F800) Shr 6) or
//((Value And $FF0000) Shr 19);
asm
  imul ecx,[eax].FDelta
  add ecx,[eax].FStart
  mov eax,[ebp+$08]  //Value
  push esi
  mov esi,eax        //Self
  and esi, $F8       //маска
  shl esi, 7
  push edi
  mov edi,eax
  and edi, $F800
  shr edi, 6
  or esi,edi
  pop edi
  and eax, $FF0000
  shr eax, 19
  or eax,esi
  mov [ecx+edx*2],ax
  pop esi
end;

procedure TQuickPixels.SetPixels16(X, Y: Integer; const Value: TColor);
//PWord(FStart + FDelta * Y + (X Shl 1))^ :=
//((Value And $F8) Shl 8) or ((Value And $FC00) Shr 5)
//or ((Value And $FF0000) Shr 19);
asm
  imul ecx,[eax].FDelta
  add ecx,[eax].FStart
  mov eax,[ebp+$08]  //Value
  push esi
  mov esi,[ebp+$08]
  and esi, $F8       //маска
  shl esi, 8
  push edi
  mov edi,[ebp+$08]
  and edi, $FC00
  shr edi, 5
  or esi,edi
  pop edi
  and eax, $FF0000
  shr eax, 19
  or eax,esi
  mov [ecx+edx*2],ax
  pop esi
end;

procedure TQuickPixels.SetPixels24(X, Y: Integer; const Value: TColor);
//PRGBTriple(FStart + FDelta * Y + 3 * X)^ := PRGBTriple(@i)^
asm
  imul ecx,[eax].FDelta
  add ecx,[eax].FStart
  lea edx,[edx+edx*2]
  mov eax,[ebp+8]  //Value
  bswap eax
  shr eax, 8
  mov [ecx+edx],ax
  shr eax, 16
  mov [ecx+edx+2],al
end;

procedure TQuickPixels.SetPixels32(X, Y: Integer; const Value: TColor);
//PInteger(FStart + FDelta * Y + (X Shl 2))^ := SwappedValue
asm
  imul ecx,[eax].FDelta
  add ecx,[eax].FStart
  mov eax, Value
  bswap eax
  shr eax, 8
  mov [ecx+4*edx],eax
end;

procedure TQuickPixels.SetPixels(X, Y: Integer; const Value: TColor);
begin
  SetPixel(X, Y, Value);
end;

function TQuickPixels.GetPixels(X, Y: Integer): TColor;
begin
  Result := GetPixel(X, Y);
end;

procedure TQuickPixels.SetBPP(const Value: Integer);
begin
  FBPP := Value;
  case FBPP of
    1: if FByPaletteIndex then
      begin
        SetPixel := SetPixels1Index;
        GetPixel := GetPixels1Index;
      end
      else
      begin
        SetPixel := SetPixels1;
        GetPixel := GetPixels1;
      end;
    4: if FByPaletteIndex then
      begin
        SetPixel := SetPixels4Index;
        GetPixel := GetPixels4Index;
      end
      else
      begin
        SetPixel := SetPixels4;
        GetPixel := GetPixels4;
      end;
    8: if FByPaletteIndex then
      begin
        SetPixel := SetPixels8Index;
        GetPixel := GetPixels8Index;
      end
      else
      begin
        SetPixel := SetPixels8;
        GetPixel := GetPixels8;
      end;
    15:
      begin
        SetPixel := SetPixels15;
        GetPixel := GetPixels15;
      end;
    16:
      begin
        SetPixel := SetPixels16;
        GetPixel := GetPixels16;
      end;
    24:
      begin
        SetPixel := SetPixels24;
        GetPixel := GetPixels24;
      end;
    32:
      begin
        SetPixel := SetPixels32;
        GetPixel := GetPixels32;
      end;
  end;
end;

procedure TQuickPixels.SetByPaletteIndex(const Value: Boolean);
begin
  if Value <> FByPaletteIndex then
  begin
    FByPaletteIndex := Value;
    SetBPP(FBPP); //переназначение метода доступа
  end;
end;

function TQuickPixels.PalIndex(const Color: TColor): Integer;
asm
  push edx
  mov eax,[eax].FHPal
  push eax
  call GetNearestPaletteIndex
end;

function TQuickPixels.GetPixels1(X, Y: Integer): TColor;
asm
  push ebx
  mov ebx,edx   //X
  imul ecx,[eax].FDelta
  add ecx,[eax].FStart
  shr edx,3     //X div 8
  movzx edx, BYTE PTR [ecx+edx ]
  //в DL теперь байт, соответствующий 8 точкам
  mov ecx,ebx
  and ecx,7     //X mod 8
  mov ebx,edx
  mov edx,$80   //1000000b
  shr edx,cl    //сдвигаем единичку вправо на X mod 8
  and ebx,edx   //накладываем маску
  pop ebx
  jz @@Zero     //если нужный бит нулевой, выставлен флаг ZF
  mov eax, DWORD PTR [eax+8].FLogPal  //бит единичный, берем из палитры 1-й цвет
  jmp @@Exit
@@Zero:
  mov eax, DWORD PTR [eax+4].FLogPal  //берем из палитры 0-й цвет
@@Exit:
end;

function TQuickPixels.GetPixels15(X, Y: Integer): TColor;
asm
  imul ecx,[eax].FDelta
  add ecx,[eax].FStart
  movzx eax,word ptr [ecx+2*edx]  //PWord(FStart + FDelta * Y + (X * 2))^
  mov ecx,eax
  and ecx,$1F       //5 бит Blue
  imul ecx,541052   //масштабирование
  mov edx,eax
  and ecx,$FF0000   //маска Blue
  and edx,$3E0      //5 бит Green
  imul edx,135263
  and eax,$7C00
  shr edx,11
  imul eax,135263    //Red
  and edx,$FF00     //маска Green
  shr eax,24
  or eax,ecx
  or eax,edx
end;

function TQuickPixels.GetPixels16(X, Y: Integer): TColor;
asm
  imul ecx,[eax].FDelta
  add ecx,[eax].FStart
  movzx eax,word ptr [ecx+2*edx] //PWord(FStart + FDelta * Y + (X * 2))^
  mov ecx,eax
  and ecx,$1F
  imul ecx,541052
  and ecx,$FF0000
  mov edx,eax
  and edx,$7E0
  imul edx,135263
  shr edx,12
  and eax,$F800
  and edx,$FF00
  imul eax,135263
  shr eax,24
  or eax,ecx
  or eax,edx
end;

function TQuickPixels.GetPixels1Index(X, Y: Integer): TColor;
asm
  push edx
  imul ecx,[eax].FDelta
  add ecx,[eax].FStart
  shr edx,3
  movzx eax, BYTE PTR [ecx+edx]
  pop ecx
  and ecx,7
  shr eax,cl
  and eax,1
end;

function TQuickPixels.GetPixels24(X, Y: Integer): TColor;
//PRGBTriple(@i)^ := PRGBTriple(FStart + FDelta * Y + 3 * X)^;
asm
  imul ecx,[eax].FDelta
  add ecx,[eax].FStart
  add ecx,edx
  movzx eax,WORD PTR [ecx+2*edx]
  bswap eax
  shr eax,8
  movzx ecx, BYTE PTR [ecx+2*edx+2]
  or eax,ecx
end;

function TQuickPixels.GetPixels32(X, Y: Integer): TColor;
//SwappedValue := PInteger(FStart + FDelta * Y + 4 * X )^;
asm
  imul ecx,[eax].FDelta
  add ecx,[eax].FStart
  mov eax,[ecx+4*edx]
  bswap eax
  shr eax, 8
end;

function TQuickPixels.GetPixels4(X, Y: Integer): TColor;
asm
  imul ecx,[eax].FDelta
  add ecx,[eax].FStart  //в ECX теперь номер цвета в палитре
  shr edx,1     //X div 2
  movzx ecx, BYTE PTR [ecx+edx]
  jnc @@IsEven
  //флаг переноса CF установлен при выполнении Shr,
  //если младший бит был единичным, т.е. X нечетно
  and ecx,$0F    //маска младшего полубайта
  jmp @@GetCol
@@IsEven:
  shr ecx,4      //старший полубайт, сдвинутый вправо
@@GetCol:
  mov eax, DWORD PTR [eax+ecx*4+4].FLogPal
  //Self + смещение поля FLogPal + смещение массива цветов + номер цвета*4
  //(4 = SizeOf(TPaletteEntry))

end;

function TQuickPixels.GetPixels4Index(X, Y: Integer): TColor;
asm
  imul ecx,[eax].FDelta
  add ecx,[eax].FStart  //в ECX теперь номер цвета в палитре
  shr edx,1
  movzx eax, BYTE PTR [ecx+edx]
  jnc @@IsEven
  and eax,$0F
  jmp @@Exit
@@IsEven:
  shr eax,4
@@Exit:
end;

function TQuickPixels.GetPixels8(X, Y: Integer): TColor;
asm
  imul ecx,[eax].FDelta
  add ecx,[eax].FStart  //в ECX теперь номер цвета в палитре
  movzx ecx, BYTE PTR [ecx+edx]
  mov eax, DWORD PTR [eax+ecx*4+4].FLogPal
end;

function TQuickPixels.GetPixels8Index(X, Y: Integer): TColor;
asm
  imul ecx,[eax].FDelta
  add ecx,[eax].FStart
  movzx eax, BYTE PTR [ecx+edx]
end;

procedure TQuickPixels.SetTrackBitmapChange(const Value: Boolean);
begin
  FTrackBitmapChange := Value;
  if Assigned(FBitmap) then
    if FTrackBitmapChange then
      FBitmap.OnChange := BitmapChange
    else
      FBitmap.OnChange := nil;
end;

procedure TQuickPixels.BitmapChange(Sender: TObject);
begin
  if (FBitmap.Width <> FWidth) or (FBitmap.Height <> FHeight) or
    (FBitmap.PixelFormat <> FPixelFormat) then
      Attach(FBitmap);
end;

end.

