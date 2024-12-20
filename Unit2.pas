unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Unit3;

type
  TForm2 = class(TForm)
    btnClearHistory: TButton;
    History: TMemo;
    PanelButtons: TPanel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btnAdd: TButton;
    btnClearClick: TButton;
    btnDiv: TButton;
    btnEqual: TButton;
    btnMul: TButton;
    btnPercent: TButton;
    btnSub: TButton;
    PanelDisplay: TPanel;
    btn0: TButton;
    btnDecimal: TButton;
    btnBackspace: TButton;
    btnValorProximo: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn0Click(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnSubClick(Sender: TObject);
    procedure btnMulClick(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
    procedure btnEqualClick(Sender: TObject);
    procedure btnClearClickClick(Sender: TObject);
    procedure btnPercentClick(Sender: TObject);
    procedure btnClearHistoryClick(Sender: TObject);
    procedure btnDecimalClick(Sender: TObject);
    procedure btnBackspaceClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnValorProximoClick(Sender: TObject);
  private
    FValue1: Double;
    FOperation: String;
    procedure AddToHistory(const Operation: String; const Result: Double);
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnValorProximoClick(Sender: TObject);
begin
  // Verifica se o Form3 está criado; se não estiver, o cria
  if not Assigned(Form3) then
    Application.CreateForm(TForm3, Form3);

  // Oculta o Form2 para exibir o Form3
  Self.Hide;

  // Exibe o Form3 de forma modal
  Form3.ShowModal;

  // Reexibe o Form2 após fechar o Form3
  Self.Show;
end;

// Adiciona uma entrada no histórico de cálculos
procedure TForm2.AddToHistory(const Operation: String; const Result: Double);
begin
  History.Lines.Add(Operation + ' = ' + FormatFloat('0.00', Result));
end;

// Limpa o histórico de cálculos
procedure TForm2.btnClearHistoryClick(Sender: TObject);
begin
   // Limpa o conteúdo do Memo que exibe o histórico
  History.Clear;
end;

// Implementação dos botões numéricos
procedure TForm2.btn0Click(Sender: TObject);
begin
  if PanelDisplay.Caption <> '0' then
    PanelDisplay.Caption := PanelDisplay.Caption + '0';
end;

// Resto dos eventos dos botões numéricos
procedure TForm2.btn1Click(Sender: TObject);
begin
  if PanelDisplay.Caption = '0' then
    PanelDisplay.Caption := '1'
  else
    PanelDisplay.Caption := PanelDisplay.Caption + '1';
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
  if PanelDisplay.Caption = '0' then
    PanelDisplay.Caption := '2'
  else
    PanelDisplay.Caption := PanelDisplay.Caption + '2';
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
  if PanelDisplay.Caption = '0' then
    PanelDisplay.Caption := '3'
  else
    PanelDisplay.Caption := PanelDisplay.Caption + '3';
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
  if PanelDisplay.Caption = '0' then
    PanelDisplay.Caption := '4'
  else
    PanelDisplay.Caption := PanelDisplay.Caption + '4';
end;

procedure TForm2.btn5Click(Sender: TObject);
begin
  if PanelDisplay.Caption = '0' then
    PanelDisplay.Caption := '5'
  else
    PanelDisplay.Caption := PanelDisplay.Caption + '5';
end;

procedure TForm2.btn6Click(Sender: TObject);
begin
  if PanelDisplay.Caption = '0' then
    PanelDisplay.Caption := '6'
  else
    PanelDisplay.Caption := PanelDisplay.Caption + '6';
end;

procedure TForm2.btn7Click(Sender: TObject);
begin
  if PanelDisplay.Caption = '0' then
    PanelDisplay.Caption := '7'
  else
    PanelDisplay.Caption := PanelDisplay.Caption + '7';
end;

procedure TForm2.btn8Click(Sender: TObject);
begin
  if PanelDisplay.Caption = '0' then
    PanelDisplay.Caption := '8'
  else
    PanelDisplay.Caption := PanelDisplay.Caption + '8';
end;

procedure TForm2.btn9Click(Sender: TObject);
begin
  if PanelDisplay.Caption = '0' then
    PanelDisplay.Caption := '9'
  else
    PanelDisplay.Caption := PanelDisplay.Caption + '9';
end;

// Implementação dos operadores
procedure TForm2.btnAddClick(Sender: TObject);
begin
  FValue1 := StrToFloatDef(PanelDisplay.Caption, 0);
  FOperation := '+';
  PanelDisplay.Caption := '0';
end;

procedure TForm2.btnSubClick(Sender: TObject);
begin
  FValue1 := StrToFloatDef(PanelDisplay.Caption, 0);
  FOperation := '-';
  PanelDisplay.Caption := '0';
end;


procedure TForm2.btnMulClick(Sender: TObject);
begin
  FValue1 := StrToFloatDef(PanelDisplay.Caption, 0);
  FOperation := '*';
  PanelDisplay.Caption := '0';
end;

procedure TForm2.btnDivClick(Sender: TObject);
begin
  FValue1 := StrToFloatDef(PanelDisplay.Caption, 0);
  FOperation := '/';
  PanelDisplay.Caption := '0';
end;

// Implementação do botão de Igual (=)
procedure TForm2.btnEqualClick(Sender: TObject);
var
  FValue2: Double;
  Result: Double;
  OperationText: String;
begin
  if PanelDisplay.Caption = '' then Exit;

  FValue2 := StrToFloatDef(PanelDisplay.Caption, 0);

  if FOperation = '+' then
    Result := FValue1 + FValue2
  else if FOperation = '-' then
    Result := FValue1 - FValue2
  else if FOperation = '*' then
    Result := FValue1 * FValue2
  else if FOperation = '/' then
    if FValue2 <> 0 then
      Result := FValue1 / FValue2
    else
    begin
      ShowMessage('Erro: Divisão por zero');
      Exit;
    end;

  PanelDisplay.Caption := FormatFloat('0.00', Result);
  OperationText := FloatToStr(FValue1) + ' ' + FOperation + ' ' + FloatToStr(FValue2);
  AddToHistory(OperationText, Result);
  FOperation := '';
end;

// Implementação do botão Clear (C)
procedure TForm2.btnClearClickClick(Sender: TObject);
begin
  PanelDisplay.Caption := '0';
  FValue1 := 0;
  FOperation := '';
end;

// Implementação do botão de Porcentagem (%)
procedure TForm2.btnPercentClick(Sender: TObject);
var
  FValue2, Result: Double;
begin
  if PanelDisplay.Caption = '' then
  begin
    ShowMessage('Por favor, insira um número antes de aplicar a porcentagem.');
    Exit;
  end;

  try
    FValue2 := StrToFloatDef(PanelDisplay.Caption, 0);

    if FOperation = '*' then
      Result := FValue1 * (FValue2 / 100)
    else if FOperation = '/' then
      Result := FValue1 / (FValue2 / 100)
    else if FOperation = '+' then
      Result := FValue1 + (FValue1 * FValue2 / 100)
    else if FOperation = '-' then
      Result := FValue1 - (FValue1 * FValue2 / 100)
    else
      Result := 0;

    PanelDisplay.Caption := FloatToStr(Result);
  except
    on E: EConvertError do
      ShowMessage('Valor inválido. Por favor, insira um número válido.');
  end;
end;

// Implementação do botão de Backspace
procedure TForm2.btnBackspaceClick(Sender: TObject);
begin
  if Length(PanelDisplay.Caption) > 0 then
    PanelDisplay.Caption := Copy(PanelDisplay.Caption, 1, Length(PanelDisplay.Caption) - 1);

  if PanelDisplay.Caption = '' then
    PanelDisplay.Caption := '0';
end;

// Implementação do botão Decimal (,)
procedure TForm2.btnDecimalClick(Sender: TObject);
begin
  if Pos(',', PanelDisplay.Caption) = 0 then
    PanelDisplay.Caption := PanelDisplay.Caption + ',';
end;

// Implementação do evento de captura de teclas
procedure TForm2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9'] then
    if PanelDisplay.Caption = '0' then
      PanelDisplay.Caption := Key
    else
      PanelDisplay.Caption := PanelDisplay.Caption + Key
  else if Key = '+' then
    btnAddClick(Sender)
  else if Key = '-' then
    btnSubClick(Sender)
  else if Key = '*' then
    btnMulClick(Sender)
  else if Key = '/' then
    btnDivClick(Sender)
  else if Key = '=' then
    btnEqualClick(Sender)
  else if Key = #13 then
    btnEqualClick(Sender);
end;

procedure TForm2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    btnEqualClick(Self);
    Key := 0;
  end;
end;

end.

