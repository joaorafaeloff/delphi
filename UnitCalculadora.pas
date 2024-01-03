unit UnitCalculadora;

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
  Vcl.StdCtrls;

type
  TFrmCalculadora = class(TForm)
    EdtResultado: TEdit;
    Bt7: TButton;
    Bt8: TButton;
    Bt9: TButton;
    BtSoma: TButton;
    Bt5: TButton;
    BtSubtrair: TButton;
    Bt6: TButton;
    Bt4: TButton;
    Bt2: TButton;
    BtMultiplicar: TButton;
    Bt3: TButton;
    Bt1: TButton;
    Bt0: TButton;
    BtDividir: TButton;
    BtIgual: TButton;
    BtLimpar: TButton;
    procedure BtMultiplicarClick(Sender: TObject);
    procedure BtSomaClick(Sender: TObject);
    procedure BtSubtrairClick(Sender: TObject);
    procedure BtDividirClick(Sender: TObject);
    procedure NumeroClick(Sender: TObject);
    procedure BtIgualClick(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private

   FOperacao: Char;
   FTotal: Double;
   FUltimoNumero: Double;

   procedure Calculo;
   procedure Limpar;

  public

  end;

var
  FrmCalculadora: TFrmCalculadora;

implementation

{$R *.dfm}

procedure TFrmCalculadora.NumeroClick(Sender: TObject);

begin
if FUltimoNumero = 0 then
  EdtResultado.Text := TButton(Sender).Caption
  else
  EdtResultado.Text := EdtResultado.Text + TButton(Sender).Caption;
  FUltimoNumero := StrToFloat(EdtResultado.Text);
end;

procedure TFrmCalculadora.BtDividirClick(Sender: TObject);

begin
  FUltimoNumero := StrToFloat(EdtResultado.Text);
  Calculo;
  FOperacao := '/';
end;

procedure TFrmCalculadora.BtIgualClick(Sender: TObject);

begin
  Calculo;
end;

procedure TFrmCalculadora.BtLimparClick(Sender: TObject);

begin
  Limpar;
end;

procedure TFrmCalculadora.BtMultiplicarClick(Sender: TObject);

begin
  FUltimoNumero := StrToFloat(EdtResultado.Text);
  Calculo;
  FOperacao := '*';
end;

procedure TFrmCalculadora.BtSomaClick(Sender: TObject);

begin
  FUltimoNumero := StrToFloat(EdtResultado.Text);
  Calculo;
  FOperacao := '+';
end;

procedure TFrmCalculadora.BtSubtrairClick(Sender: TObject);

begin
  FUltimoNumero := StrToFloat(EdtResultado.Text);
  Calculo;
  FOperacao := '-';
end;

procedure TFrmCalculadora.Calculo;

begin
  case FOperacao of
     '+' : FTotal := FTotal + StrToFloat(EdtResultado.Text);
     '-' : FTotal := FTotal - StrToFloat(EdtResultado.Text);
     '*' : FTotal := FTotal * StrToFloat(EdtResultado.Text);
     '/' : FTotal := FTotal / StrToFloat(EdtResultado.Text);
     end;

  EdtResultado.Text := FloatToStr(Ftotal);
  FUltimoNumero := 0;

  end;

procedure TFrmCalculadora.FormCreate(Sender: TObject);

begin
  Limpar;
end;

procedure TFrmCalculadora.Limpar;

begin

  FUltimoNumero := 0;
  EdtResultado.Text := '0';
  FOperacao := '+';
  FTotal := 0;

end;

end.
