unit uPadraoModel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, ComCtrls, ToolWin, uConexao, DB, StdCtrls,
  Grids, DBGrids, DBCtrls, Buttons, ComObj, ExcelXP;

type
  TFormPadrao = class(TForm)
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    btnNovo: TToolButton;
    btnDeletar: TToolButton;
    btnAlterar: TToolButton;
    btnCancelar: TToolButton;
    btnSalvar: TToolButton;
    btnPesquisar: TToolButton;
    btnPrimeiro: TToolButton;
    btnAnterior: TToolButton;
    btnProximo: TToolButton;
    btnUltimo: TToolButton;
    DS: TDataSource;
    PageControl1: TPageControl;
    tbDados: TTabSheet;
    tbFiltros: TTabSheet;
    gbFiltros: TGroupBox;
    DBGrid1: TDBGrid;
    gbDados: TGroupBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DSStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    procedure StatusBotoes(e: integer);
    function ExportToExcel(oDataSet : TDataSet; sFile : String): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPadrao: TFormPadrao;

implementation
Uses  uPrincipal;

{$R *.dfm}

{ TForm2 }

procedure TFormPadrao.StatusBotoes(e: integer);
begin
  btnSalvar.Enabled := e=1;
  btnCancelar.Enabled := e=1;

  btnAnterior.Enabled := (e=2) and not (DS.DataSet.IsEmpty);
  btnProximo.Enabled := (e=2) and not (DS.DataSet.IsEmpty);
  btnPrimeiro.Enabled := (e=2) and not (DS.DataSet.IsEmpty);
  btnUltimo.Enabled := (e=2) and not (DS.DataSet.IsEmpty);

  btnNovo.Enabled := e=2;
  btnDeletar.Enabled := (e=2) and not (DS.DataSet.IsEmpty);
  btnAlterar.Enabled := (e=2) and not (DS.DataSet.IsEmpty);
  btnPesquisar.Enabled := e=2;

end;


function TFormPadrao.ExportToExcel(oDataSet : TDataSet; sFile : String): Boolean;
var
iCol,iRow : Integer;

oExcel : TExcelApplication;
oWorkbook : TExcelWorkbook;
oSheet : TExcelWorksheet;

begin
iCol := 0;
iRow := 0;
result := True;

oExcel := TExcelApplication.Create(Application);
oWorkbook := TExcelWorkbook.Create(Application);
oSheet := TExcelWorksheet.Create(Application);

try
oExcel.Visible[0] := False;
oExcel.Connect;
except
result := False;
MessageDlg('Excel may not be installed', mtError, [mbOk], 0);
exit;
end;

oExcel.Visible[0] := True;
oExcel.Caption := 'Sawami Export Engine';
oExcel.Workbooks.Add(Null,0);

oWorkbook.ConnectTo(oExcel.Workbooks[1]);
oSheet.ConnectTo(oWorkbook.Worksheets[1] as _Worksheet);

// iRow := 1;

for iCol:=1 to oDataSet.FieldCount do begin
// oSheet.Cells.Item[iRow,iCol] := oDataSet.FieldDefs.Items[iCol].Name;
// oSheet.Cells.Item[iRow,iCol] := oDataSet.Fields[iCol-1].FieldName;
end;

// iRow := 2;

oDataSet.Open;
while NOT oDataSet.Eof do begin
Inc(iRow);

for iCol:=1 to oDataSet.FieldCount do begin
oSheet.Cells.Item[iRow,iCol] := oDataSet.Fields[iCol-1].AsString;
end;

oDataSet.Next;
end;

//Change the wprksheet name.
oSheet.Name := 'List of Accounts';

//Change the font properties of all columns.
oSheet.Columns.Font.Color := clPurple;
oSheet.Columns.Font.FontStyle := fsBold;
oSheet.Columns.Font.Size := 10;

//Change the font properties of a row.
oSheet.Range['A1','A1'].EntireRow.Font.Color := clNavy;
oSheet.Range['A1','A1'].EntireRow.Font.Size := 16;
oSheet.Range['A1','A1'].EntireRow.Font.FontStyle := fsBold;
oSheet.Range['A1','A1'].EntireRow.Font.Name := 'Arabic Transparent';

//Change the font properties of a row.
oSheet.Range['A2','A2'].EntireRow.Font.Color := clBlue;
oSheet.Range['A2','A2'].EntireRow.Font.Size := 12;
oSheet.Range['A2','A2'].EntireRow.Font.FontStyle := fsBold;
oSheet.Range['A2','A2'].EntireRow.Font.Name := 'Arabic Transparent';
oSheet.Range['A2','H2'].HorizontalAlignment := xlHAlignCenter;
{
//Change the font properties of a column.
oSheet.Range['A1','C1'].EntireColumn.Font.Color := clBlue;

//Change Cells color of a row.
oSheet.Range['A1', 'A1'].EntireRow.Interior.Color := clNavy;

//Change Cells color of a column.
oSheet.Range['C1', 'C1'].EntireColumn.Interior.Color := clYellow;

//Align a column.
oSheet.Range['A1','A1'].HorizontalAlignment := xlHAlignLeft;

//Set a column with manually.
// oSheet.Columns.Range['A1','A1'].ColumnWidth := 16;
}
//Auto fit all columns.
oSheet.Columns.AutoFit;


DeleteFile(sFile);

Sleep(2000);

oSheet.SaveAs(sFile);
oSheet.Disconnect;
oSheet.Free;

oWorkbook.Disconnect;
oWorkbook.Free;

oExcel.Quit;
oExcel.Disconnect;
oExcel.Free;
end;




procedure TFormPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ds.DataSet.Close;
end;

procedure TFormPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if( key = vk_return)
      and not (ActiveControl is tmemo)
      and not (ActiveControl is TDBMemo)
      and not (ActiveControl is TDBGrid) then
      Perform( WM_NEXTDLGCTL,0,0);
end;

procedure TFormPadrao.DSStateChange(Sender: TObject);
begin
    tbFiltros.TabVisible := ds.DataSet.State in [dsBrowse, dsInactive];
    gbDados.Enabled      := ds.DataSet.State in dsEditModes;

    if ds.DataSet.State in dsEditModes then
      StatusBotoes(1)
    else
      StatusBotoes(2);

end;

procedure TFormPadrao.FormShow(Sender: TObject);
begin
    StatusBotoes(2);
end;

procedure TFormPadrao.btnNovoClick(Sender: TObject);
begin
    if not ds.DataSet.Active then
        ds.DataSet.Open;

    ds.DataSet.Append;

    PageControl1.ActivePageIndex := 0;
end;

procedure TFormPadrao.btnAlterarClick(Sender: TObject);
begin
    if ds.DataSet.Active then
    begin
        if not ds.DataSet.IsEmpty then
        begin
            ds.DataSet.Edit;
            PageControl1.ActivePageIndex := 0;
        end else
            ShowMessage('Não Há Registros para Alteração.');
    end;
end;

procedure TFormPadrao.btnSalvarClick(Sender: TObject);
begin
    ds.DataSet.Post;
end;

procedure TFormPadrao.btnCancelarClick(Sender: TObject);
begin
    if (Application.MessageBox('Deseja Cancelar ', 'Cancelar', MB_YESNO + MB_ICONQUESTION )= id_yes) then
    begin
        ds.DataSet.Cancel;
    end;
end;

procedure TFormPadrao.btnDeletarClick(Sender: TObject);
begin
  if ds.DataSet.Active then
  begin
    if not ds.DataSet.IsEmpty then
    begin
        if (Application.MessageBox('Deseja Deletar ', 'Deletar', MB_YESNO + MB_ICONQUESTION) = id_yes) then
        begin
          ds.DataSet.Cancel;
        end;
    end
    else
        ShowMessage('Não Há registros');
  end;
end;

procedure TFormPadrao.btnPesquisarClick(Sender: TObject);
begin
    ds.DataSet.Close;
    ds.DataSet.Open;
end;

procedure TFormPadrao.btnPrimeiroClick(Sender: TObject);
begin
    ds.DataSet.First;
end;

procedure TFormPadrao.btnAnteriorClick(Sender: TObject);
begin
    ds.DataSet.Prior;
end;

procedure TFormPadrao.btnProximoClick(Sender: TObject);
begin
    ds.DataSet.Next;
end;

procedure TFormPadrao.btnUltimoClick(Sender: TObject);
begin
    ds.DataSet.Last;
end;

procedure TFormPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin
    SelectNext(ActiveControl as TWinControl,True,True);
    key:=#0;
  end;
end;

procedure TFormPadrao.FormCreate(Sender: TObject);
begin
  KeyPreview:=true;
end;

procedure TFormPadrao.BitBtn1Click(Sender: TObject);
begin
  {ExportToExcel(DBGrid1.DataSource.DataSet,'C:\MyDat a.XLS');}
  ExportToExcel(DBGrid1.DataSource.DataSet,(extractFilepath(application.exename) + DBGrid1.DataSource.DataSet.Name +'.XLS'));

end;

end.
