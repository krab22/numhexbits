unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Spin;

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
  private
    FIsChange : Boolean;
    procedure UpdateBits;
    procedure UpdateHexAndBits;
    procedure UpdateNumAndBits;
    procedure SetBits(Avalue : Cardinal);
    function  GetStringBits(Avalue : Cardinal) : String;
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
  UpdateBits;
end;

procedure TfrmMain.cbBit1Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit2Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit3Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit4Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit5Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit6Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit7Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit8Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit9Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit10Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit11Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit12Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit13Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit14Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit15Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit16Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit17Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit19Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit20Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit21Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit22Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit23Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit24Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit25Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit26Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit27Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit28Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit29Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit30Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit31Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.cbBit18Change(Sender : TObject);
begin
  UpdateBits;
end;

procedure TfrmMain.FormShow(Sender : TObject);
begin
  speValue.MinValue := Integer(MaxCardinal);
end;

procedure TfrmMain.UpdateBits;
var TempValue : Cardinal;
begin
  if FIsChange then Exit;

  TempValue := 0;

  if cbBit0.Checked  then TempValue := (TempValue or $00000001) else TempValue := (TempValue and $FFFFFFFE);
  if cbBit1.Checked  then TempValue := (TempValue or $00000002) else TempValue := (TempValue and $FFFFFFFD);
  if cbBit2.Checked  then TempValue := (TempValue or $00000004) else TempValue := (TempValue and $FFFFFFFB);
  if cbBit3.Checked  then TempValue := (TempValue or $00000008) else TempValue := (TempValue and $FFFFFFF7);
  if cbBit4.Checked  then TempValue := (TempValue or $00000010) else TempValue := (TempValue and $FFFFFFEF);
  if cbBit5.Checked  then TempValue := (TempValue or $00000020) else TempValue := (TempValue and $FFFFFFDF);
  if cbBit6.Checked  then TempValue := (TempValue or $00000040) else TempValue := (TempValue and $FFFFFFBF);
  if cbBit7.Checked  then TempValue := (TempValue or $00000080) else TempValue := (TempValue and $FFFFFF7F);
  if cbBit8.Checked  then TempValue := (TempValue or $00000100) else TempValue := (TempValue and $FFFFFEFF);
  if cbBit9.Checked  then TempValue := (TempValue or $00000200) else TempValue := (TempValue and $FFFFFDFF);
  if cbBit10.Checked then TempValue := (TempValue or $00000400) else TempValue := (TempValue and $FFFFFBFF);
  if cbBit11.Checked then TempValue := (TempValue or $00000800) else TempValue := (TempValue and $FFFFF7FF);
  if cbBit12.Checked then TempValue := (TempValue or $00001000) else TempValue := (TempValue and $FFFFEFFF);
  if cbBit13.Checked then TempValue := (TempValue or $00002000) else TempValue := (TempValue and $FFFFDFFF);
  if cbBit14.Checked then TempValue := (TempValue or $00004000) else TempValue := (TempValue and $FFFFBFFF);
  if cbBit15.Checked then TempValue := (TempValue or $00008000) else TempValue := (TempValue and $FFFF7FFF);
  if cbBit16.Checked then TempValue := (TempValue or $00010000) else TempValue := (TempValue and $FFFEFFFF);
  if cbBit17.Checked then TempValue := (TempValue or $00020000) else TempValue := (TempValue and $FFFDFFFF);
  if cbBit18.Checked then TempValue := (TempValue or $00040000) else TempValue := (TempValue and $FFFBFFFF);
  if cbBit19.Checked then TempValue := (TempValue or $00080000) else TempValue := (TempValue and $FFF7FFFF);
  if cbBit20.Checked then TempValue := (TempValue or $00100000) else TempValue := (TempValue and $FFEFFFFF);
  if cbBit21.Checked then TempValue := (TempValue or $00200000) else TempValue := (TempValue and $FFDFFFFF);
  if cbBit22.Checked then TempValue := (TempValue or $00400000) else TempValue := (TempValue and $FFBFFFFF);
  if cbBit23.Checked then TempValue := (TempValue or $00800000) else TempValue := (TempValue and $FF7FFFFF);
  if cbBit24.Checked then TempValue := (TempValue or $01000000) else TempValue := (TempValue and $FEFFFFFF);
  if cbBit25.Checked then TempValue := (TempValue or $02000000) else TempValue := (TempValue and $FDFFFFFF);
  if cbBit26.Checked then TempValue := (TempValue or $04000000) else TempValue := (TempValue and $FBFFFFFF);
  if cbBit27.Checked then TempValue := (TempValue or $08000000) else TempValue := (TempValue and $F7FFFFFF);
  if cbBit28.Checked then TempValue := (TempValue or $10000000) else TempValue := (TempValue and $EFFFFFFF);
  if cbBit29.Checked then TempValue := (TempValue or $20000000) else TempValue := (TempValue and $DFFFFFFF);
  if cbBit30.Checked then TempValue := (TempValue or $40000000) else TempValue := (TempValue and $BFFFFFFF);
  if cbBit31.Checked then TempValue := (TempValue or $80000000) else TempValue := (TempValue and $7FFFFFFF);

  speValue.Value := Integer(TempValue);
  edValHex.Text  := IntToHex(Cardinal(speValue.Value),8);
//  edStringBit.Text := IntToStr(speValue.Value);
//  if speValue.Value = -1 then edStringBit.Text := GetStringBits($80000000)
//   else
  edStringBit.Text := GetStringBits(Cardinal(speValue.Value));
end;

procedure TfrmMain.UpdateHexAndBits;
begin
  try
   if speValue.Value > 0 then
    begin
     edValHex.Text := IntToHex(speValue.Value,8);
     edStringBit.Text := GetStringBits(Cardinal(speValue.Value));
    end
   else
    begin
     edValHex.Text  := '0';
     edStringBit.Text := '0';
    end;
	except
   speValue.Value   := 0;
   edValHex.Text    := '0';
   edStringBit.Text := '0';
  end;
  if speValue.Value = -1 then SetBits($80000000)
   else SetBits(Cardinal(speValue.Value));
end;

procedure TfrmMain.UpdateNumAndBits;
begin
  try
   speValue.Value   := StrToInt(Format('$%s',[edValHex.Text]));
   if speValue.Value > 0 then edStringBit.Text := GetStringBits(Cardinal(speValue.Value))
    else edStringBit.Text := '0';
  except
   speValue.Value   := 0;
   edValHex.Text    := '0';
   edStringBit.Text := '0';
  end;
  SetBits(Cardinal(speValue.Value));
end;

procedure TfrmMain.SetBits(Avalue : Cardinal);
begin
  FIsChange := True;
  try
   cbBit0.Checked  :=  (aValue and $00000001) = $00000001;
   cbBit1.Checked  :=  (aValue and $00000002) = $00000002;
   cbBit2.Checked  :=  (aValue and $00000004) = $00000004;
   cbBit3.Checked  :=  (aValue and $00000008) = $00000008;
   cbBit4.Checked  :=  (aValue and $00000010) = $00000010;
   cbBit5.Checked  :=  (aValue and $00000020) = $00000020;
   cbBit6.Checked  :=  (aValue and $00000040) = $00000040;
   cbBit7.Checked  :=  (aValue and $00000080) = $00000080;
   cbBit8.Checked  :=  (aValue and $00000100) = $00000100;
   cbBit9.Checked  :=  (aValue and $00000200) = $00000200;
   cbBit10.Checked :=  (aValue and $00000400) = $00000400;
   cbBit11.Checked :=  (aValue and $00000800) = $00000800;
   cbBit12.Checked :=  (aValue and $00001000) = $00001000;
   cbBit13.Checked :=  (aValue and $00002000) = $00002000;
   cbBit14.Checked :=  (aValue and $00004000) = $00004000;
   cbBit15.Checked :=  (aValue and $00008000) = $00008000;
   cbBit16.Checked :=  (aValue and $00010000) = $00010000;
   cbBit17.Checked :=  (aValue and $00020000) = $00020000;
   cbBit18.Checked :=  (aValue and $00040000) = $00040000;
   cbBit19.Checked :=  (aValue and $00080000) = $00080000;
   cbBit20.Checked :=  (aValue and $00100000) = $00100000;
   cbBit21.Checked :=  (aValue and $00200000) = $00200000;
   cbBit22.Checked :=  (aValue and $00400000) = $00400000;
   cbBit23.Checked :=  (aValue and $00800000) = $00800000;
   cbBit24.Checked :=  (aValue and $01000000) = $01000000;
   cbBit25.Checked :=  (aValue and $02000000) = $02000000;
   cbBit26.Checked :=  (aValue and $04000000) = $04000000;
   cbBit27.Checked :=  (aValue and $08000000) = $08000000;
   cbBit28.Checked :=  (aValue and $10000000) = $10000000;
   cbBit29.Checked :=  (aValue and $20000000) = $20000000;
   cbBit30.Checked :=  (aValue and $40000000) = $40000000;
   cbBit31.Checked :=  (aValue and $80000000) = $80000000;
  finally
   FIsChange := False;
  end;
end;

function TfrmMain.GetStringBits(Avalue : Cardinal) : String;
const csOne = '1';
begin
  Result := '00000000 00000000 00000000 00000000';
	if (aValue and $00000001) = $00000001 then Result[35] := csOne;
  if (aValue and $00000002) = $00000002 then Result[34] := csOne;
  if (aValue and $00000004) = $00000004 then Result[33] := csOne;
  if (aValue and $00000008) = $00000008 then Result[32] := csOne;
  if (aValue and $00000010) = $00000010 then Result[31] := csOne;
  if (aValue and $00000020) = $00000020 then Result[30] := csOne;
  if (aValue and $00000040) = $00000040 then Result[29] := csOne;
  if (aValue and $00000080) = $00000080 then Result[28] := csOne;
                                                        //27
  if (aValue and $00000100) = $00000100 then Result[26] := csOne;
  if (aValue and $00000200) = $00000200 then Result[25] := csOne;
  if (aValue and $00000400) = $00000400 then Result[24] := csOne;
  if (aValue and $00000800) = $00000800 then Result[23] := csOne;
  if (aValue and $00001000) = $00001000 then Result[22] := csOne;
  if (aValue and $00002000) = $00002000 then Result[21] := csOne;
  if (aValue and $00004000) = $00004000 then Result[20] := csOne;
  if (aValue and $00008000) = $00008000 then Result[19] := csOne;
                                                        //18
  if (aValue and $00010000) = $00010000 then Result[17] := csOne;
  if (aValue and $00020000) = $00020000 then Result[16] := csOne;
  if (aValue and $00040000) = $00040000 then Result[15] := csOne;
  if (aValue and $00080000) = $00080000 then Result[14] := csOne;
  if (aValue and $00100000) = $00100000 then Result[13] := csOne;
  if (aValue and $00200000) = $00200000 then Result[12] := csOne;
  if (aValue and $00400000) = $00400000 then Result[11] := csOne;
  if (aValue and $00800000) = $00800000 then Result[10]  := csOne;
                                                        //9
  if (aValue and $01000000) = $01000000 then Result[8]  := csOne;
  if (aValue and $02000000) = $02000000 then Result[7]  := csOne;
  if (aValue and $04000000) = $04000000 then Result[6]  := csOne;
  if (aValue and $08000000) = $08000000 then Result[5]  := csOne;
  if (aValue and $10000000) = $10000000 then Result[4]  := csOne;
  if (aValue and $20000000) = $20000000 then Result[3]  := csOne;
  if (aValue and $40000000) = $40000000 then Result[2]  := csOne;
  if (aValue and $80000000) = $80000000 then Result[1]  := csOne;
end;

end.
