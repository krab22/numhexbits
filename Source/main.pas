unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Spin, DigitalTypes;

const
  MaxCardinal = $FFFFFFFF;

type

	{ TfrmMain }

  TfrmMain = class(TForm)
    gbValue     : TGroupBox;
    speValue    : TSpinEdit;
    gbBits      : TGroupBox;
    edValHex    : TEdit;
    lbValue     : TLabel;
    lbValHex    : TLabel;
    cbBit0      : TCheckBox;
    cbBit1      : TCheckBox;
    cbBit2      : TCheckBox;
    cbBit3      : TCheckBox;
    cbBit4      : TCheckBox;
    cbBit5      : TCheckBox;
    cbBit6      : TCheckBox;
    cbBit7      : TCheckBox;
    cbBit8      : TCheckBox;
    cbBit9      : TCheckBox;
    cbBit10     : TCheckBox;
    cbBit11     : TCheckBox;
    cbBit12     : TCheckBox;
    cbBit13     : TCheckBox;
    cbBit14     : TCheckBox;
    cbBit15     : TCheckBox;
    cbBit16     : TCheckBox;
    cbBit17     : TCheckBox;
    cbBit18     : TCheckBox;
    cbBit19     : TCheckBox;
    cbBit20     : TCheckBox;
    cbBit21     : TCheckBox;
    cbBit22     : TCheckBox;
    cbBit23     : TCheckBox;
    cbBit24     : TCheckBox;
    cbBit25     : TCheckBox;
    cbBit26     : TCheckBox;
    cbBit27     : TCheckBox;
    cbBit28     : TCheckBox;
    cbBit29     : TCheckBox;
    cbBit30     : TCheckBox;
    cbBit31     : TCheckBox;
    lbStringBit : TLabel;
    edStringBit : TEdit;
    edByte0     : TEdit;
    edByte2     : TEdit;
    edByte1     : TEdit;
    edByte3     : TEdit;
    lbByte0     : TLabel;
    lbByte1     : TLabel;
    lbByte2     : TLabel;
    lbByte3     : TLabel;
    procedure edValHexKeyPress(Sender : TObject; var Key : char);
    procedure edByte0KeyPress(Sender : TObject; var Key : char);
    procedure cbBit0Change(Sender : TObject);
    procedure cbBit1Change(Sender : TObject);
    procedure cbBit2Change(Sender : TObject);
    procedure cbBit3Change(Sender : TObject);
    procedure cbBit4Change(Sender : TObject);
    procedure cbBit5Change(Sender : TObject);
    procedure cbBit6Change(Sender : TObject);
    procedure cbBit7Change(Sender : TObject);
    procedure cbBit8Change(Sender : TObject);
    procedure cbBit9Change(Sender : TObject);
    procedure cbBit10Change(Sender : TObject);
    procedure cbBit11Change(Sender : TObject);
    procedure cbBit12Change(Sender : TObject);
    procedure cbBit13Change(Sender : TObject);
    procedure cbBit14Change(Sender : TObject);
    procedure cbBit15Change(Sender : TObject);
    procedure cbBit16Change(Sender : TObject);
    procedure cbBit17Change(Sender : TObject);
    procedure cbBit19Change(Sender : TObject);
    procedure cbBit20Change(Sender : TObject);
    procedure cbBit21Change(Sender : TObject);
    procedure cbBit22Change(Sender : TObject);
    procedure cbBit23Change(Sender : TObject);
    procedure cbBit24Change(Sender : TObject);
    procedure cbBit25Change(Sender : TObject);
    procedure cbBit26Change(Sender : TObject);
    procedure cbBit27Change(Sender : TObject);
    procedure cbBit28Change(Sender : TObject);
    procedure cbBit29Change(Sender : TObject);
    procedure cbBit30Change(Sender : TObject);
    procedure cbBit31Change(Sender : TObject);
    procedure cbBit18Change(Sender : TObject);
		procedure FormShow(Sender : TObject);
    procedure FormClose(Sender : TObject; var CloseAction : TCloseAction);
    procedure edByte0KeyUp(Sender : TObject; var Key : Word; Shift : TShiftState);
    procedure edByte1KeyUp(Sender : TObject; var Key : Word; Shift : TShiftState);
    procedure edByte2KeyUp(Sender : TObject; var Key : Word; Shift : TShiftState);
    procedure edByte3KeyUp(Sender : TObject; var Key : Word; Shift : TShiftState);
    procedure edValHexKeyUp(Sender : TObject; var Key : Word; Shift : TShiftState);
    procedure speValueKeyUp(Sender : TObject; var Key : Word;
      Shift : TShiftState);
    procedure speValueMouseUp(Sender : TObject; Button : TMouseButton;
      Shift : TShiftState; X, Y : Integer);
  private
    FIsUpdate : Boolean;
    FCardinal : TCardinalClass;
    procedure UpdateBits;
    procedure UpdateAllBits;
    procedure UpdateByte0;
    procedure UpdateByte1;
    procedure UpdateByte2;
    procedure UpdateByte3;
    procedure UpdateHexAndBits;
    procedure UpdateNumAndBits;
  end;

var
  frmMain : TfrmMain;

implementation

{$R *.lfm}

{ TfrmMain }

procedure TfrmMain.edValHexKeyPress(Sender : TObject; var Key : char);
const TempKey : set of char = ['0'..'9','a'..'f','A'..'F',#08];
begin
  if not (Key in TempKey) then
   begin
    Key := #0;
    Exit;
   end;
end;

procedure TfrmMain.edByte0KeyPress(Sender : TObject; var Key : char);
const TempKey : set of char = ['0'..'9',#08];
begin
  if not (Key in TempKey) then
   begin
    Key := #0;
    Exit;
   end;
end;

procedure TfrmMain.cbBit0Change(Sender : TObject);
begin
  FCardinal.ValueBit0 := cbBit0.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit1Change(Sender : TObject);
begin
  FCardinal.ValueBit1 := cbBit1.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit2Change(Sender : TObject);
begin
  FCardinal.ValueBit2 := cbBit2.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit3Change(Sender : TObject);
begin
  FCardinal.ValueBit3 := cbBit3.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit4Change(Sender : TObject);
begin
  FCardinal.ValueBit4 := cbBit4.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit5Change(Sender : TObject);
begin
  FCardinal.ValueBit5 := cbBit5.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit6Change(Sender : TObject);
begin
  FCardinal.ValueBit6 := cbBit6.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit7Change(Sender : TObject);
begin
  FCardinal.ValueBit7 := cbBit7.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit8Change(Sender : TObject);
begin
  FCardinal.ValueBit8 := cbBit8.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit9Change(Sender : TObject);
begin
  FCardinal.ValueBit9 := cbBit9.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit10Change(Sender : TObject);
begin
  FCardinal.ValueBit10 := cbBit10.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit11Change(Sender : TObject);
begin
  FCardinal.ValueBit11 := cbBit11.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit12Change(Sender : TObject);
begin
  FCardinal.ValueBit12 := cbBit12.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit13Change(Sender : TObject);
begin
  FCardinal.ValueBit13 := cbBit13.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit14Change(Sender : TObject);
begin
  FCardinal.ValueBit14 := cbBit14.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit15Change(Sender : TObject);
begin
  FCardinal.ValueBit15 := cbBit15.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit16Change(Sender : TObject);
begin
  FCardinal.ValueBit16 := cbBit16.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit17Change(Sender : TObject);
begin
  FCardinal.ValueBit17 := cbBit17.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit18Change(Sender : TObject);
begin
  FCardinal.ValueBit18 := cbBit18.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit19Change(Sender : TObject);
begin
  FCardinal.ValueBit19 := cbBit19.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit20Change(Sender : TObject);
begin
  FCardinal.ValueBit20 := cbBit20.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit21Change(Sender : TObject);
begin
  FCardinal.ValueBit21 := cbBit21.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit22Change(Sender : TObject);
begin
  FCardinal.ValueBit22 := cbBit22.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit23Change(Sender : TObject);
begin
  FCardinal.ValueBit23 := cbBit23.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit24Change(Sender : TObject);
begin
  FCardinal.ValueBit24 := cbBit24.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit25Change(Sender : TObject);
begin
  FCardinal.ValueBit25 := cbBit25.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit26Change(Sender : TObject);
begin
  FCardinal.ValueBit26 := cbBit26.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit27Change(Sender : TObject);
begin
  FCardinal.ValueBit27 := cbBit27.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit28Change(Sender : TObject);
begin
  FCardinal.ValueBit28 := cbBit28.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit29Change(Sender : TObject);
begin
  FCardinal.ValueBit29 := cbBit29.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit30Change(Sender : TObject);
begin
  FCardinal.ValueBit30 := cbBit30.Checked;
  UpdateBits;
end;

procedure TfrmMain.cbBit31Change(Sender : TObject);
begin
  FCardinal.ValueBit31 := cbBit31.Checked;
  UpdateBits;
end;

procedure TfrmMain.FormShow(Sender : TObject);
begin
  speValue.MinValue := Integer(MaxCardinal);
  FCardinal := TCardinalClass.Create;
  FIsUpdate := False;
end;

procedure TfrmMain.FormClose(Sender : TObject; var CloseAction : TCloseAction);
begin
  FreeAndNil(FCardinal);
  CloseAction := caFree;
end;

procedure TfrmMain.edByte0KeyUp(Sender : TObject; var Key : Word; Shift : TShiftState);
var TempVal : Integer;
begin
  if edByte0.Text = '' then edByte0.Text := '0';
  TempVal := StrToInt(edByte0.Text);
  if TempVal > 255 then
   begin
    TempVal := 255;
    edByte0.Text := '255';
   end;
  FCardinal.ValueByte0 := TempVal;

  UpdateByte0;
end;

procedure TfrmMain.edByte1KeyUp(Sender : TObject; var Key : Word; Shift : TShiftState);
var TempVal : Integer;
begin
  if edByte1.Text = '' then edByte1.Text :='0';
  TempVal := StrToInt(edByte1.Text);
  if TempVal > 255 then
   begin
    TempVal := 255;
    edByte1.Text := '255';
   end;
  FCardinal.ValueByte1 := TempVal;

  UpdateByte1;
end;

procedure TfrmMain.edByte2KeyUp(Sender : TObject; var Key : Word; Shift : TShiftState);
var TempVal : Integer;
begin
  if edByte2.Text = '' then edByte2.Text := '0';
  TempVal := StrToInt(edByte2.Text);
  if TempVal > 255 then
   begin
    TempVal := 255;
    edByte2.Text := '255';
   end;
  FCardinal.ValueByte2 := TempVal;

  UpdateByte2;
end;

procedure TfrmMain.edByte3KeyUp(Sender : TObject; var Key : Word; Shift : TShiftState);
var TempVal : Integer;
begin
  if edByte3.Text = '' then edByte3.Text := '0';
  TempVal := StrToInt(edByte3.Text);
  if TempVal > 255 then
   begin
    TempVal := 255;
    edByte3.Text := '255';
   end;
  FCardinal.ValueByte3 := TempVal;

  UpdateByte3;
end;

procedure TfrmMain.edValHexKeyUp(Sender : TObject; var Key : Word; Shift : TShiftState);
begin
  if edValHex.Text = '' then edValHex.Text := '00000000';
  FCardinal.ValueAsHex := edValHex.Text;
  UpdateNumAndBits;
end;

procedure TfrmMain.speValueKeyUp(Sender : TObject; var Key : Word; Shift : TShiftState);
begin
  FCardinal.Value := Cardinal(speValue.Value);
  UpdateHexAndBits;
end;

procedure TfrmMain.speValueMouseUp(Sender : TObject; Button : TMouseButton; Shift : TShiftState; X, Y : Integer);
begin
  FCardinal.Value := Cardinal(speValue.Value);
  UpdateHexAndBits;
end;

procedure TfrmMain.UpdateBits;
begin
  if FIsUpdate then Exit;

  speValue.Value   := Integer(FCardinal.Value);
  edStringBit.Text := FCardinal.ValueAsBitsStr;
  edValHex.Text    := FCardinal.ValueAsHex;
  edByte0.Text     := FCardinal.ValueByte0Str;
  edByte1.Text     := FCardinal.ValueByte1Str;
  edByte2.Text     := FCardinal.ValueByte2Str;
  edByte3.Text     := FCardinal.ValueByte3Str;
end;

procedure TfrmMain.UpdateAllBits;
begin
  FIsUpdate := True;
  try
   cbBit31.Checked := FCardinal.ValueBit31;
   cbBit30.Checked := FCardinal.ValueBit30;
   cbBit29.Checked := FCardinal.ValueBit29;
   cbBit28.Checked := FCardinal.ValueBit28;
   cbBit27.Checked := FCardinal.ValueBit27;
   cbBit26.Checked := FCardinal.ValueBit26;
   cbBit25.Checked := FCardinal.ValueBit25;
   cbBit24.Checked := FCardinal.ValueBit24;
   cbBit23.Checked := FCardinal.ValueBit23;
   cbBit22.Checked := FCardinal.ValueBit22;
   cbBit21.Checked := FCardinal.ValueBit21;
   cbBit20.Checked := FCardinal.ValueBit20;
   cbBit19.Checked := FCardinal.ValueBit19;
   cbBit18.Checked := FCardinal.ValueBit18;
   cbBit17.Checked := FCardinal.ValueBit17;
   cbBit16.Checked := FCardinal.ValueBit16;
   cbBit15.Checked := FCardinal.ValueBit15;
   cbBit14.Checked := FCardinal.ValueBit14;
   cbBit13.Checked := FCardinal.ValueBit13;
   cbBit12.Checked := FCardinal.ValueBit12;
   cbBit11.Checked := FCardinal.ValueBit11;
   cbBit10.Checked := FCardinal.ValueBit10;
   cbBit9.Checked  := FCardinal.ValueBit9;
   cbBit8.Checked  := FCardinal.ValueBit8;
   cbBit7.Checked  := FCardinal.ValueBit7;
   cbBit6.Checked  := FCardinal.ValueBit6;
   cbBit5.Checked  := FCardinal.ValueBit5;
   cbBit4.Checked  := FCardinal.ValueBit4;
   cbBit3.Checked  := FCardinal.ValueBit3;
   cbBit2.Checked  := FCardinal.ValueBit2;
   cbBit1.Checked  := FCardinal.ValueBit1;
   cbBit0.Checked  := FCardinal.ValueBit0;
  finally
   FIsUpdate := False;
  end;
end;

procedure TfrmMain.UpdateByte0;
begin
  edStringBit.Text := FCardinal.ValueAsBitsStr;
  speValue.Value   := Integer(FCardinal.Value);
  edValHex.Text    := FCardinal.ValueAsHex;
  edByte1.Text     := FCardinal.ValueByte1Str;
  edByte2.Text     := FCardinal.ValueByte2Str;
  edByte3.Text     := FCardinal.ValueByte3Str;

  FIsUpdate := True;
  try
   cbBit7.Checked   := FCardinal.ValueBit7;
   cbBit6.Checked   := FCardinal.ValueBit6;
   cbBit5.Checked   := FCardinal.ValueBit5;
   cbBit4.Checked   := FCardinal.ValueBit4;
   cbBit3.Checked   := FCardinal.ValueBit3;
   cbBit2.Checked   := FCardinal.ValueBit2;
   cbBit1.Checked   := FCardinal.ValueBit1;
   cbBit0.Checked   := FCardinal.ValueBit0;
  finally
   FIsUpdate := False;
  end;
end;

procedure TfrmMain.UpdateByte1;
begin
  edStringBit.Text := FCardinal.ValueAsBitsStr;
  speValue.Value   := Integer(FCardinal.Value);
  edValHex.Text    := FCardinal.ValueAsHex;
  edByte0.Text     := FCardinal.ValueByte0Str;
  edByte2.Text     := FCardinal.ValueByte2Str;
  edByte3.Text     := FCardinal.ValueByte3Str;

  FIsUpdate := True;
  try
   cbBit15.Checked  := FCardinal.ValueBit15;
   cbBit14.Checked  := FCardinal.ValueBit14;
   cbBit13.Checked  := FCardinal.ValueBit13;
   cbBit12.Checked  := FCardinal.ValueBit12;
   cbBit11.Checked  := FCardinal.ValueBit11;
   cbBit10.Checked  := FCardinal.ValueBit10;
   cbBit9.Checked   := FCardinal.ValueBit9;
   cbBit8.Checked   := FCardinal.ValueBit8;
  finally
   FIsUpdate := False;
  end;
end;

procedure TfrmMain.UpdateByte2;
begin
  edStringBit.Text := FCardinal.ValueAsBitsStr;
  speValue.Value   := Integer(FCardinal.Value);
  edValHex.Text    := FCardinal.ValueAsHex;
  edByte0.Text     := FCardinal.ValueByte0Str;
  edByte1.Text     := FCardinal.ValueByte1Str;
  edByte3.Text     := FCardinal.ValueByte3Str;

  FIsUpdate := True;
  try
   cbBit23.Checked  := FCardinal.ValueBit23;
   cbBit22.Checked  := FCardinal.ValueBit22;
   cbBit21.Checked  := FCardinal.ValueBit21;
   cbBit20.Checked  := FCardinal.ValueBit20;
   cbBit19.Checked  := FCardinal.ValueBit19;
   cbBit18.Checked  := FCardinal.ValueBit18;
   cbBit17.Checked  := FCardinal.ValueBit17;
   cbBit16.Checked  := FCardinal.ValueBit16;
  finally
   FIsUpdate := False;
  end;
end;

procedure TfrmMain.UpdateByte3;
begin
  edStringBit.Text := FCardinal.ValueAsBitsStr;
  speValue.Value   := Integer(FCardinal.Value);
  edValHex.Text    := FCardinal.ValueAsHex;
  edByte0.Text     := FCardinal.ValueByte0Str;
  edByte1.Text     := FCardinal.ValueByte1Str;
  edByte2.Text     := FCardinal.ValueByte2Str;

  FIsUpdate := True;
  try
   cbBit31.Checked  := FCardinal.ValueBit31;
   cbBit30.Checked  := FCardinal.ValueBit30;
   cbBit29.Checked  := FCardinal.ValueBit29;
   cbBit28.Checked  := FCardinal.ValueBit28;
   cbBit27.Checked  := FCardinal.ValueBit27;
   cbBit26.Checked  := FCardinal.ValueBit26;
   cbBit25.Checked  := FCardinal.ValueBit25;
   cbBit24.Checked  := FCardinal.ValueBit24;
  finally
   FIsUpdate := False;
  end;
end;

procedure TfrmMain.UpdateHexAndBits;
begin
  edValHex.Text    := FCardinal.ValueAsHex;
  edStringBit.Text := FCardinal.ValueAsBitsStr;
  edByte0.Text     := FCardinal.ValueByte0Str;
  edByte1.Text     := FCardinal.ValueByte1Str;
  edByte2.Text     := FCardinal.ValueByte2Str;
  edByte3.Text     := FCardinal.ValueByte3Str;

  UpdateAllBits;
end;

procedure TfrmMain.UpdateNumAndBits;
begin
  speValue.Value   := Integer(FCardinal.Value);
  edStringBit.Text := FCardinal.ValueAsBitsStr;
  edByte0.Text     := FCardinal.ValueByte0Str;
  edByte1.Text     := FCardinal.ValueByte1Str;
  edByte2.Text     := FCardinal.ValueByte2Str;
  edByte3.Text     := FCardinal.ValueByte3Str;

  UpdateAllBits;
end;

end.
