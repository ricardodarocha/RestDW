unit uRDW_EasyJSON;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uDWConstsData, uRESTDWPoolerDB, uDWResponseTranslator, uDWAbout;

type
  TForm1 = class(TForm)
    DWClientREST: TDWClientREST;
    ResponseTranslator: TDWResponseTranslator;
    Dados: TRESTDWClientSQL;
    DataSource: TDataSource;
    DBGrid1: TDBGrid;
    btnAbrir: TBitBtn;
    Label1: TLabel;


    /// <summary>
    ///  Preencha sua requisção ná propriedade requestOpenURL do ResponseTranslator (DW)
    /// </summary>
    procedure btnAbrirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnAbrirClick(Sender: TObject);
begin
  Dados.Open;
end;

end.
