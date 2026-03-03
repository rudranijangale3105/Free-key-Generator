unit Gen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ClipBrd, XPMan;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    ScrollBar1: TScrollBar;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Button2: TButton;
    Button3: TButton;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Shape1: TShape;
    Label5: TLabel;
    XPManifest1: TXPManifest;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  Form1: TForm1;
  casus: Integer;
  agros: array[0..2] of Integer;
  quantum: array[0..2] of Integer;
  associatio: array[0..2] of Integer;
  const quantitas = 3;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  pass: String;
  i, j, numerus: Integer;
begin

  j := 0;

  for i := 0 to quantitas do
  begin
    if agros[i] > 0 then
    begin
      associatio[i] := j;
      j := j + 1;
    end
    else
    begin
      associatio[i] := -1;
    end;
  end;

  if casus > 0 then
  begin
    for i := 1 to ScrollBar1.Position do
    begin
      numerus := Random(casus);

      for j := 0 to quantitas do
      begin
        if numerus = associatio[j] then
          numerus := Random(quantum[j]) + agros[j];
      end;

      pass := pass + Char(numerus);
    end;

    Edit1.Text := pass;
  end
  else
  begin
  if ComboBox1.ItemIndex = 0 then
    MessageDlg('It is not checked what will key contain.', mtWarning, [mbOK], 0)
  else if ComboBox1.ItemIndex = 1 then
    MessageDlg('Nie je zaökrtnutÈ, Ëo m· heslo obsahovaù.', mtWarning, [mbOK], 0);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Clipboard.AsText := Edit1.Text;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if Checkbox1.Checked = true then
  begin
    casus := casus + 1;
    agros[0] := 48;
  end
  else
  begin
    casus := casus - 1;
    agros[0] := 0;
  end;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  if Checkbox2.Checked = true then
  begin
    casus := casus + 1;
    agros[1] := 65;
  end
  else
  begin
    casus := casus - 1;
    agros[1] := 0;
  end;

end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
  if Checkbox3.Checked = true then
  begin
    casus := casus + 1;
    agros[2] := 97;
  end
  else
  begin
    casus := casus - 1;
    agros[2] := 0;
  end;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.ItemIndex = 0 then
begin
  Label3.Caption := 'Chars: ' + IntToStr(ScrollBar1.Position);
  Label4.Caption := 'Language';
  Label4.Left := 78;

  CheckBox1.Caption := 'Numbers';
  CheckBox2.Caption := 'Big letters';
  CheckBox3.Caption := 'Small letters';

  GroupBox1.Caption := 'The key will contains  ';
  GroupBox2.Caption := 'Key length  ';

  Button1.Caption := 'Generate';
  Button2.Caption := 'Copy to clipboard';
  Button3.Caption := 'Close';
end
else if ComboBox1.ItemIndex = 1 then
begin
  Label3.Caption := 'Znakov: ' + IntToStr(ScrollBar1.Position);
  Label4.Caption := 'Jazyk';
  Label4.Left := 95;

  CheckBox1.Caption := '»Ìsla';
  CheckBox2.Caption := 'VeækÈ pÌsmen·';
  CheckBox3.Caption := 'MalÈ pÌsmen·';

  GroupBox1.Caption := 'Heslo bude obsahovaù  ';
  GroupBox2.Caption := 'DÂûka hesla  ';

  Button1.Caption := 'Generuj';
  Button2.Caption := 'KopÌruj do schr·nky';
  Button3.Caption := 'Koniec';

end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Randomize();
  Edit1.MaxLength := 33;
  Label1.Caption := 'Min: ' + IntToStr(ScrollBar1.Min);
  Label2.Caption := 'Max: ' + IntToStr(ScrollBar1.Max);
  Label3.Caption := 'Chars: ' + IntToStr(ScrollBar1.Position);

  quantum[0] := 10;
  quantum[1] := 26;
  quantum[2] := 26;
  casus := 0;

  ComboBox1.ItemIndex := 0;

  if Checkbox1.Checked = true then
  begin
    casus := casus + 1;
    agros[0] := 48;
  end;
  if Checkbox2.Checked = true then
  begin
    casus := casus + 1;
    agros[1] := 65;
  end;
  if Checkbox3.Checked = true then
  begin
    casus := casus + 1;
    agros[2] := 97;
  end;
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
if ComboBox1.ItemIndex = 0 then
  Label3.Caption := 'Chars: ' + IntToStr(ScrollBar1.Position)
else if ComboBox1.ItemIndex = 1 then
  Label3.Caption := 'Znakov: ' + IntToStr(ScrollBar1.Position);
     
end;

end.
