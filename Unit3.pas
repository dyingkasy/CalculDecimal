unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Math, ClipBrd,
  Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    btnArredondarCima: TButton;
    btnArredondarBaixo: TButton;
    btnVoltar: TButton;
    Panel1: TPanel;
    lblResultado: TLabel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    edtValor: TEdit;
    edtQuantidade: TEdit;
    procedure btnArredondarCimaClick(Sender: TObject);
    procedure btnArredondarBaixoClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure lblResultadoClick(Sender: TObject); // Evento para copiar o texto do lblResultado
  private
    FParentForm: TForm; // Armazena a referência do formulário pai
    procedure CalcularValorTotal; // Método para calcular o valor total
  public
    procedure SetParentForm(AForm: TForm); // Método para definir o formulário pai
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}
uses
  Unit2;

procedure TForm3.SetParentForm(AForm: TForm);
begin
  FParentForm := AForm;
end;

procedure TForm3.CalcularValorTotal;
var
  ValorUnitario, Quantidade, Total: Double;
begin
  ValorUnitario := StrToFloatDef(edtValor.Text, 0);
  Quantidade := StrToFloatDef(edtQuantidade.Text, 1);
  Total := ValorUnitario * Quantidade;
  lblResultado.Caption := 'Resultado: ' + FormatFloat('0.00', Total);
end;

procedure TForm3.lblResultadoClick(Sender: TObject);
var
  TextoParaCopiar: String;
begin
  // Extrai apenas o valor numérico do lblResultado (removendo "Resultado: ")
  TextoParaCopiar := StringReplace(lblResultado.Caption, 'Resultado: ', '', [rfReplaceAll]);
  Clipboard.AsText := TextoParaCopiar; // Copia o texto para a área de transferência
  ShowMessage('Valor copiado para a área de transferência: ' + TextoParaCopiar); // Mensagem de confirmação
end;

procedure TForm3.btnArredondarBaixoClick(Sender: TObject);
var
  Total, Resultado: Double;
begin
  Total := StrToFloatDef(edtValor.Text, 0) * StrToFloatDef(edtQuantidade.Text, 1);
  Resultado := Floor(Total * 100) / 100;
  lblResultado.Caption := 'Resultado: ' + FormatFloat('0.00', Resultado);
end;

procedure TForm3.btnArredondarCimaClick(Sender: TObject);
var
  Total, Resultado: Double;
begin
  Total := StrToFloatDef(edtValor.Text, 0) * StrToFloatDef(edtQuantidade.Text, 1);
  Resultado := Ceil(Total * 100) / 100;
  lblResultado.Caption := 'Resultado: ' + FormatFloat('0.00', Resultado);
end;

procedure TForm3.btnVoltarClick(Sender: TObject);
begin
  Close; // Fecha o Form3, retornando ao Form2
end;

end.

