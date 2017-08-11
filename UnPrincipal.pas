unit UnPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1Codigo: TIntegerField;
    ClientDataSet1Descricao: TStringField;
    ClientDataSet1Unidade: TStringField;
    ClientDataSet1Fornecedor: TStringField;
    ClientDataSet1Data: TDateField;
    ClientDataSet1Quantidade: TFloatField;
    ClientDataSet1Unitario: TCurrencyField;
    ClientDataSet1Total: TCurrencyField;
    ClientDataSet1EstoqueQtd: TAggregateField;
    ClientDataSet1EstoqueVlr: TAggregateField;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    Button1: TButton;
    ComboBox1: TComboBox;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    ComboBox2: TComboBox;
    Label12: TLabel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label13: TLabel;
    DBEdit3: TDBEdit;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ClientDataSet1BeforePost(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
if (ComboBox2.ItemIndex = 0) then
begin
ClientDataSet1.IndexFieldNames := ComboBox1.Text;
end;

if (ComboBox2.ItemIndex = 1) then
begin
if ClientDataSet1.Locate(ComboBox1.Text, Edit1.Text, [loCaseInsensitive, loPartialKey] ) then
begin
ShowMessage('Localizei');
end
else
ShowMessage('Nao Localizei');
end;

if (ComboBox2.ItemIndex = 2) then
begin
ClientDataSet1.IndexFieldNames:='id;valor';
if ClientDataSet1.FindKey([1,3333]) then
begin
showmessage('encontrado e registro posicionado');
end
else
showmessage('n�o encontrado!');
end;

if (ComboBox2.ItemIndex = 3) then
begin
ComboBox2.Items.Clear;
end;

if (ComboBox2.ItemIndex = 4) then
if not ClientDataSet1.Active then ClientDataSet1.Open;
ClientDataSet1.First;
while not ClientDataSet1.EOF do
begin
ClientDataSet1.Next;
end;

if (ComboBox2.ItemIndex = 5) then
begin
ClientDataSet1.Filtered:=false;
ClientDataSet1.Filter:='Indexar=1';
ClientDataSet1.Filtered:=true;
end;
begin
ClientDataSet1.Filtered:=false;
ClientDataSet1.Filter:='Locate=1';
ClientDataSet1.Filtered:=true;
end;
begin
ClientDataSet1.Filtered:=false;
ClientDataSet1.Filter:='FindKey=1';
ClientDataSet1.Filtered:=true;
end;
begin
ClientDataSet1.Filtered:=false;
ClientDataSet1.Filter:='Limpar=1';
ClientDataSet1.Filtered:=true;
end;
begin
ClientDataSet1.Filtered:=false;
ClientDataSet1.Filter:='Percorrer=1';
ClientDataSet1.Filtered:=true;
end;
begin
ClientDataSet1.Filtered:=false;
ClientDataSet1.Filter:='Filtrar=1';
ClientDataSet1.Filtered:=true;
end;
begin
ClientDataSet1.Filtered:=false;
ClientDataSet1.Filter:='Limpar Filtro=1';
ClientDataSet1.Filtered:=true;
end;

if (ComboBox2.ItemIndex = 6) then
begin
ClientDataSet1.Filter:=false;
ClientDataSet1.Filter:=false;
end;


procedure TForm1.ClientDataSet1BeforePost(DataSet: TDataSet);
begin
if ClientDataSet1Codigo.IsNull then
begin
ShowMessage('Informe o c�digo');
Abort;
end;


if ClientDataSet1Descricao.IsNull then
begin
ShowMessage('Informe a descri��o');
Abort;
end;


if ClientDataSet1Data.IsNull then
begin
ShowMessage('Informe a data');
Abort;
end;


if ClientDataSet1Quantidade.IsNull then
begin
ShowMessage('Informe a quantidade');
Abort;
end;

if ClientDataSet1Fornecedor.IsNull then
begin
ShowMessage('Informe o fornecedor');
Abort;
end;


if ClientDataSet1Unitario.IsNull then
begin
ShowMessage('Informe o unitario');
Abort;
end;


if ClientDataSet1Total.IsNull then
begin
ShowMessage('Informe o total');
Abort;
end;


if ClientDataSet1Unidade.IsNull then
begin
ShowMessage('Informe a unidade');
Abort;
end;

end;


procedure TForm1.FormCreate(Sender: TObject);
const
cDataFile = 'Dados.xml';
begin
ClientDataSet1.FileName := ExtractFilePath(Application.ExeName)+ cDataFile;
if FileExists( ClientDataSet1.FileName) then
ClientDataSet1.Open
else
ClientDataSet1.CreateDataSet;
end;

end.
