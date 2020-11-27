unit uEditDesigner;

interface

uses
  Windows, Classes, Dialogs, EmbeddedWB, MSHTML_Ewb, EditDesigner, Forms,
  Controls, ExtCtrls, StdCtrls, ComCtrls, SysUtils, Vcl.OleCtrls, EwbCore,
  SHDocVw_EWB, OleCtrlsFix, Vcl.ToolWin, System.ImageList, Vcl.ImgList,
  Winapi.ShellAPI, Vcl.Menus, System.StrUtils, System.Actions, Vcl.ActnList,
  Vcl.StdActns, Winapi.Messages, Vcl.Clipbrd, SynEdit, SynCompletionProposal,
  SynHighlighterMulti, SynHighlighterHtml, SynHighlighterCSS,
  SynEditHighlighter, SynEditCodeFolding, SynHighlighterJScript;

type
  TForm1 = class(TForm)
    EditDesigner1: TEditDesigner;
    EmbeddedWB1: TEmbeddedWB;
    ImageListToolBar1: TImageList;
    ImageListToolBar2: TImageList;
    ToolBar1: TToolBar;
    ToolButtonNew: TToolButton;
    ToolButtonOpen: TToolButton;
    ToolButtonSave: TToolButton;
    ToolButtonSeparator1: TToolButton;
    ToolButtonPrint: TToolButton;
    ToolButtonPreview: TToolButton;
    ToolButtonSeparator2: TToolButton;
    ToolButtonCut: TToolButton;
    ToolButtonCopy: TToolButton;
    ToolButtonPaste: TToolButton;
    ToolButtonSeparator3: TToolButton;
    ToolButtonUndo: TToolButton;
    ToolButtonRedo: TToolButton;
    ToolBar2: TToolBar;
    ComboBoxFontName: TComboBox;
    ToolButtonSeparator4: TToolButton;
    ComboBoxFontHTMLSize: TComboBox;
    ToolButtonSeparator5: TToolButton;
    ToolButtonBold: TToolButton;
    ToolButtonItalic: TToolButton;
    ToolButtonUnderline: TToolButton;
    ToolButtonSeparator6: TToolButton;
    ToolButtonNumbering: TToolButton;
    ToolButtonBullets: TToolButton;
    ToolButtonDecInd: TToolButton;
    ToolButtonIncInd: TToolButton;
    ToolButtonSeparator7: TToolButton;
    ToolButtonJustifyLeft: TToolButton;
    ToolButtonJustifyCenter: TToolButton;
    ToolButtonJustifyRight: TToolButton;
    ToolButtonJustifyFull: TToolButton;
    ToolButtonSeparator8: TToolButton;
    ToolButtonInsertHorizontalLine: TToolButton;
    ToolButtonInsertHyperlink: TToolButton;
    ToolButtonInsertPicture: TToolButton;
    ToolButtonSeparator9: TToolButton;
    ToolButtonBackColor: TToolButton;
    ToolButtonForeColor: TToolButton;
    ToolButtonRadioButton: TToolButton;
    ColorDialog1: TColorDialog;
    ToolButtonSync: TToolButton;
    MainMenu1: TMainMenu;
    MenuItemFile: TMenuItem;
    MenuItemFileNew: TMenuItem;
    MenuItemFileOpen: TMenuItem;
    MenuItemFileSeparator1: TMenuItem;
    MenuItemFileSave: TMenuItem;
    MenuItemFileSaveAs: TMenuItem;
    MenuItemFileSeparator2: TMenuItem;
    MenuItemFilePageSetup: TMenuItem;
    MenuItemFilePrintPreview: TMenuItem;
    MenuItemFilePrint: TMenuItem;
    MenuItemFileSeparator3: TMenuItem;
    MenuItemFileExit: TMenuItem;
    MenuItemEdit: TMenuItem;
    MenuItemEditUndo: TMenuItem;
    MenuItemEditRedo: TMenuItem;
    MenuItemEditSeparator1: TMenuItem;
    MenuItemEditCut: TMenuItem;
    MenuItemEditCopy: TMenuItem;
    MenuItemEditPaste: TMenuItem;
    MenuItemEditSeparator2: TMenuItem;
    MenuItemEditSelectAll: TMenuItem;
    MenuItemEditSeparator3: TMenuItem;
    MenuItemEditFind: TMenuItem;
    MenuItemView: TMenuItem;
    MenuItemViewSource: TMenuItem;
    MenuItemInsert: TMenuItem;
    MenuItemInsertPicture: TMenuItem;
    MenuItemInsertHorizontalLine: TMenuItem;
    MenuItemInsertSeparator1: TMenuItem;
    MenuItemInsertHyperlink: TMenuItem;
    MenuItemTable: TMenuItem;
    MenuItemTableInsert: TMenuItem;
    MenuItemTableInsertTable: TMenuItem;
    MenuItemTableInsertColumn: TMenuItem;
    MenuItemTableInsertRow: TMenuItem;
    MenuItemTableInsertCell: TMenuItem;
    MenuItemTableDelete: TMenuItem;
    MenuItemTableDeleteColumn: TMenuItem;
    MenuItemTableDeleteRow: TMenuItem;
    MenuItemTableDeleteCell: TMenuItem;
    MenuItemTableSeparator1: TMenuItem;
    MenuItemTableMergeCells: TMenuItem;
    MenuItemTableSplitCell: TMenuItem;
    MenuItemTableSeparator2: TMenuItem;
    MenuItemTableProperties: TMenuItem;
    MenuItemTableSeparator3: TMenuItem;
    MenuItemTableShowBorders: TMenuItem;
    ActionList1: TActionList;
    aFind: TAction;
    FindDialog1: TFindDialog;
    ToolButtonTrack: TToolButton;
    Splitter1: TSplitter;
    SynCompletionProposal1: TSynCompletionProposal;
    SynJScriptSyn1: TSynJScriptSyn;
    SynCssSyn1: TSynCssSyn;
    SynHTMLSyn1: TSynHTMLSyn;
    SynMultiSyn1: TSynMultiSyn;
    SynAutoComplete1: TSynAutoComplete;
    SynEdit1: TSynEdit;
    StatusBar1: TStatusBar;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Pnl_LeftSide: TPanel;
    function EditDesigner1PreDrag: HRESULT;
    function EditDesigner1SnapRect(const pIElement: IHTMLElement; var prcNew: TRect; eHandle: TOleEnum): HRESULT;
    function EditDesigner1PostEditorEventNotify(inEvtDispId: Integer; const pIEventObj: IHTMLEventObj): HRESULT;
    function EditDesigner1PostHandleEvent(inEvtDispId: Integer; const pIEventObj: IHTMLEventObj): HRESULT;
    function EditDesigner1PreHandleEvent(inEvtDispId: Integer; const pIEventObj: IHTMLEventObj): HRESULT;
    function EditDesigner1TranslateAccelerator(inEvtDispId: Integer; const pIEventObj: IHTMLEventObj): HRESULT;
    procedure Exit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EmbeddedWB1KeyUp(Sender: TObject; var Key: Word; ScanCode: Word; Shift: TShiftState);
    procedure ToolButtonBoldClick(Sender: TObject);
    procedure ToolButtonItalicClick(Sender: TObject);
    procedure ToolButtonUnderlineClick(Sender: TObject);
    procedure ToolButtonInsertHyperlinkClick(Sender: TObject);
    procedure ToolButtonInsertPictureClick(Sender: TObject);
    procedure ToolButtonRadioButtonClick(Sender: TObject);
    procedure ToolButtonSaveClick(Sender: TObject);
    procedure ToolButtonNewClick(Sender: TObject);
    procedure ToolButtonOpenClick(Sender: TObject);
    procedure ComboBoxFontNameChange(Sender: TObject);
    procedure ComboBoxFontNameCloseUp(Sender: TObject);
    procedure ComboBoxFontHTMLSizeChange(Sender: TObject);
    procedure ToolButtonForeColorClick(Sender: TObject);
    procedure ToolButtonBackColorClick(Sender: TObject);
    procedure ToolButtonDecIndClick(Sender: TObject);
    procedure ToolButtonIncIndClick(Sender: TObject);
    procedure ToolButtonNumberingClick(Sender: TObject);
    procedure ToolButtonBulletsClick(Sender: TObject);
    procedure ToolButtonJustifyLeftClick(Sender: TObject);
    procedure ToolButtonJustifyCenterClick(Sender: TObject);
    procedure ToolButtonJustifyRightClick(Sender: TObject);
    procedure ToolButtonJustifyFullClick(Sender: TObject);
    procedure ToolButtonInsertHorizontalLineClick(Sender: TObject);
    procedure ToolButtonCutClick(Sender: TObject);
    procedure ToolButtonCopyClick(Sender: TObject);
    procedure ToolButtonPasteClick(Sender: TObject);
    procedure ToolButtonUndoClick(Sender: TObject);
    procedure ToolButtonRedoClick(Sender: TObject);
    procedure ToolButtonPrintClick(Sender: TObject);
    procedure ToolButtonPreviewClick(Sender: TObject);
    procedure ToolButtonSyncClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuItemFileNewClick(Sender: TObject);
    procedure MenuItemFileOpenClick(Sender: TObject);
    procedure MenuItemFileSaveClick(Sender: TObject);
    procedure MenuItemFilePageSetupClick(Sender: TObject);
    procedure MenuItemFilePrintPreviewClick(Sender: TObject);
    procedure MenuItemFilePrintClick(Sender: TObject);
    procedure MenuItemFileExitClick(Sender: TObject);
    procedure MenuItemEditUndoClick(Sender: TObject);
    procedure MenuItemEditRedoClick(Sender: TObject);
    procedure MenuItemEditCutClick(Sender: TObject);
    procedure MenuItemEditCopyClick(Sender: TObject);
    procedure MenuItemEditPasteClick(Sender: TObject);
    procedure MenuItemEditSelectAllClick(Sender: TObject);
    procedure MenuItemEditFindClick(Sender: TObject);
    procedure MenuItemViewSourceClick(Sender: TObject);
    procedure MenuItemInsertPictureClick(Sender: TObject);
    procedure MenuItemInsertHorizontalLineClick(Sender: TObject);
    procedure MenuItemInsertHyperlinkClick(Sender: TObject);
    procedure aFindExecute(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure EditDesigner1InnerHtml(const innerHtml: string);
    procedure EditDesigner1TagName(const tagName: string);
    procedure FormShow(Sender: TObject);
    procedure ToolButtonTrackClick(Sender: TObject);
    procedure SynEdit1StatusChange(Sender: TObject; Changes: TSynStatusChanges);
    procedure SynEdit1Change(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    IsloadingTime: Boolean;
    PvTempHtml: TStringList;
    FSelPos: Integer;
    OriginalMemoWindowProc: TWndMethod;
    TrackToggle: Boolean;
    TempFilePath: string;
    procedure UpdateDesigner;
    procedure MakeFile(APath: string);
    procedure LoadFile(APath: string);
    function FileIsBusy(AFileName: string): Boolean;
    function WaitFile(AFileName: string; ASpeepDelay: integer): Boolean;
    procedure SyncEditor;
    procedure SaveAndSync;
    procedure SyncDesigner;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.EditDesigner1InnerHtml(const innerHtml: string);
var
  LvPos : Integer;
  LvLine: Integer;
begin
//  LvPos := AdvMemo_HtmlSource.FindTextInMemo(innerHtml,[fr]);
//  if LvPos > 0 then begin
//    AdvMemo_HtmlSource.SelStart := LvPos;
//    AdvMemo_HtmlSource.SelLength := length(innerHtml);
//  end;
  if TrackToggle then
  begin
    LvPos:= Pos(innerHtml, SynEdit1.Lines.Text);
    if LvPos > 0 then begin
      LvLine := SendMessage(SynEdit1.Handle, EM_LINEFROMCHAR, LvPos - 1, 0);
      SynEdit1.SelStart := LvPos - 1;
      SynEdit1.SelLength := Length(innerHtml);
      SynEdit1.SetFocus;
    end;
  end;
end;

function TForm1.EditDesigner1PostEditorEventNotify(inEvtDispId: Integer; const pIEventObj: IHTMLEventObj): HRESULT;
begin
  Result := S_FALSE;
end;

function TForm1.EditDesigner1PostHandleEvent(inEvtDispId: Integer;
  const pIEventObj: IHTMLEventObj): HRESULT;
begin
  Result := S_FALSE;
end;

function TForm1.EditDesigner1PreDrag: HRESULT;
begin
  Result := S_FALSE;
end;

function TForm1.EditDesigner1PreHandleEvent(inEvtDispId: Integer; const pIEventObj: IHTMLEventObj): HRESULT;
begin
  Result := S_FALSE;
end;

procedure TForm1.EditDesigner1TagName(const tagName: string);
begin
//
end;

function TForm1.EditDesigner1TranslateAccelerator(inEvtDispId: Integer; const pIEventObj: IHTMLEventObj): HRESULT;
begin
  Result := S_FALSE;
end;

procedure TForm1.EmbeddedWB1KeyUp(Sender: TObject; var Key: Word; ScanCode: Word; Shift: TShiftState);
begin
  SyncEditor;
end;

function TForm1.EditDesigner1SnapRect(const pIElement: IHTMLElement;
  var prcNew: TRect; eHandle: TOleEnum): HRESULT;
begin
  case eHandle of
    ELEMENT_CORNER_NONE: ; // Code for moving the element
    ELEMENT_CORNER_TOP: ; // Code for resizing the element
    ELEMENT_CORNER_LEFT: ; // Code for resizing the element
    ELEMENT_CORNER_BOTTOM: ; // Code for resizing the element
    ELEMENT_CORNER_RIGHT: ; // Code for resizing the element
    ELEMENT_CORNER_TOPLEFT: ; // Code for resizing the element
    ELEMENT_CORNER_TOPRIGHT: ; // Code for resizing the element
    ELEMENT_CORNER_BOTTOMLEFT: ; // Code for resizing the element
    ELEMENT_CORNER_BOTTOMRIGHT: ; // Code for resizing the element
  end;
  Result := S_OK;
end;

procedure TForm1.ToolButtonBackColorClick(Sender: TObject);
begin
  if ColorDialog1.Execute then begin
    EditDesigner1.SetBackColor(ColorDialog1.Color);
    SyncEditor;
  end;
end;

procedure TForm1.ToolButtonBoldClick(Sender: TObject);
begin
  EditDesigner1.SetFontBold;
  SyncEditor;
end;

procedure TForm1.ToolButtonBulletsClick(Sender: TObject);
begin
  EditDesigner1.Bullets;
  SyncEditor;
end;

procedure TForm1.ToolButtonCopyClick(Sender: TObject);
begin
  EditDesigner1.Copy;
end;

procedure TForm1.ToolButtonCutClick(Sender: TObject);
begin
  EditDesigner1.Cut;
end;

procedure TForm1.ToolButtonDecIndClick(Sender: TObject);
begin
  EditDesigner1.OutDent;
  SyncEditor;
end;

procedure TForm1.ToolButtonForeColorClick(Sender: TObject);
begin
  if ColorDialog1.Execute then begin
    EditDesigner1.SetForeColor(ColorDialog1.Color);
    SyncEditor;
  end;
end;

procedure TForm1.ToolButtonIncIndClick(Sender: TObject);
begin
  EditDesigner1.Indent;
  SyncEditor;
end;

procedure TForm1.ToolButtonInsertHorizontalLineClick(Sender: TObject);
begin
  EditDesigner1.InsertHorizontalLine;
  SyncEditor;
end;

procedure TForm1.ToolButtonInsertHyperlinkClick(Sender: TObject);
begin
  EditDesigner1.InsertHyperlink(EditDesigner1);
  SyncEditor;
end;

procedure TForm1.ToolButtonInsertPictureClick(Sender: TObject);
begin
  EditDesigner1.InsertImage;
  SyncEditor;
end;

procedure TForm1.ToolButtonItalicClick(Sender: TObject);
begin
  EditDesigner1.SetFontItalic;
  SyncEditor;
end;

procedure TForm1.ToolButtonJustifyCenterClick(Sender: TObject);
begin
  EditDesigner1.JustifyCenter;
  SyncEditor;
end;

procedure TForm1.ToolButtonJustifyFullClick(Sender: TObject);
begin
  EditDesigner1.JustifyFull;
  SyncEditor;
end;

procedure TForm1.ToolButtonJustifyLeftClick(Sender: TObject);
begin
  EditDesigner1.JustifyLeft;
  SyncEditor;
end;

procedure TForm1.ToolButtonJustifyRightClick(Sender: TObject);
begin
  EditDesigner1.JustifyRight;
  SyncEditor;
end;

procedure TForm1.ToolButtonNewClick(Sender: TObject);
begin
  try
    IsloadingTime := True;
//    EditDesigner1.RemoveDesigner;// = S_OK
  except
  end;
  try
    if FileExists(TempFilePath) then
      DeleteFile(TempFilePath);
    MakeFile(TempFilePath);
    EmbeddedWB1.Offline := True;
    EmbeddedWB1.Navigate(TempFilePath);
    UpdateDesigner;
  finally
    IsloadingTime := False;
  end;
end;

procedure TForm1.ToolButtonNumberingClick(Sender: TObject);
begin
  EditDesigner1.Numbering;
  SyncEditor;
end;

procedure TForm1.ToolButtonOpenClick(Sender: TObject);
begin
  try
    IsloadingTime := True;
    EditDesigner1.RemoveDesigner;// = S_OK
  except
  end;
  try
    if OpenDialog1.Execute then
      LoadFile(OpenDialog1.FileName);
    EmbeddedWB1.Offline := True;
    if EmbeddedWB1.NavigateWait(OpenDialog1.FileName) then
      UpdateDesigner;
  finally
    IsloadingTime := False;
  end;
end;

procedure TForm1.ToolButtonPasteClick(Sender: TObject);
begin
  EditDesigner1.Paste;
end;

procedure TForm1.ToolButtonPreviewClick(Sender: TObject);
begin
  EmbeddedWB1.PrintPreview;
end;

procedure TForm1.ToolButtonPrintClick(Sender: TObject);
begin
  EmbeddedWB1.Print;
end;

procedure TForm1.ToolButtonRadioButtonClick(Sender: TObject);
begin
  EditDesigner1.InsertRadioButton;
  SyncEditor;
end;

procedure TForm1.ToolButtonRedoClick(Sender: TObject);
begin
  EditDesigner1.Redo;
end;

procedure TForm1.ToolButtonSaveClick(Sender: TObject);
var
  LvFileName: string;
begin
  try
    if SaveDialog1.Execute then begin
      LvFileName := SaveDialog1.FileName;
      if EditDesigner1.RemoveDesigner = S_OK then
        if EditDesigner1.SaveToFile(LvFileName) = S_OK then
          ShellExecute(Forms.Application.Handle, 'explore', PChar(LvFileName), nil, nil, SW_SHOWNORMAL);
    end;
  except on E:Exception do
    ShowMessage('Error while Saving with the following message:'+ #13 + E.Message )
  end;
end;

procedure TForm1.ToolButtonUnderlineClick(Sender: TObject);
begin
  EditDesigner1.SetFontUnderline;
  SyncEditor;
end;

procedure TForm1.ToolButtonUndoClick(Sender: TObject);
begin
  EditDesigner1.Undo;
end;

procedure TForm1.LoadFile(APath: string);
var
  Val: string;
  LvTempHtml: TStringList;
begin
  LvTempHtml := TStringList.Create;
  try
    LvTempHtml.LoadFromFile(APath);
    SynEdit1.Lines.Clear;
    for Val in LvTempHtml do
      SynEdit1.Lines.Add(Val);
  finally
    FreeAndNil(LvTempHtml);
  end;
end;

procedure TForm1.MakeFile(APath: string);
var
  Val: string;
  LvTempHtml: TStringList;
begin
  LvTempHtml := TStringList.Create;
  try
    LvTempHtml.Add('<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">');
    LvTempHtml.Add('<HTML><HEAD><TITLE> Hello World! </TITLE>');
    LvTempHtml.Add('<META charset=utf-8>');
    LvTempHtml.Add('<SCRIPT type=text/javascript>');
    LvTempHtml.Add('</SCRIPT>');
    LvTempHtml.Add('');
    LvTempHtml.Add('<STYLE type=text/css>');
    LvTempHtml.Add('</STYLE>');
    LvTempHtml.Add('');
    LvTempHtml.Add('<META name=GENERATOR content="MSHTML 11.00.10570.1001"></HEAD>');
    LvTempHtml.Add('<BODY>');
    LvTempHtml.Add('<DIV>');
    LvTempHtml.Add('Hello World!');
    LvTempHtml.Add('</DIV></BODY></HTML>');
    LvTempHtml.SaveToFile(TempFilePath);
    SynEdit1.Lines.Clear;
    for Val in LvTempHtml do
      SynEdit1.Lines.Add(Val);
  finally
    FreeAndNil(LvTempHtml);
  end;
end;

procedure TForm1.MenuItemEditCopyClick(Sender: TObject);
begin
  ToolButtonCopy.Click;
end;

procedure TForm1.MenuItemEditCutClick(Sender: TObject);
begin
  ToolButtonCut.Click;
end;

procedure TForm1.MenuItemEditFindClick(Sender: TObject);
begin
  EditDesigner1.FindDialog;
end;

procedure TForm1.MenuItemEditPasteClick(Sender: TObject);
begin
  ToolButtonPaste.Click;
end;

procedure TForm1.MenuItemEditRedoClick(Sender: TObject);
begin
  ToolButtonRedo.Click;
end;

procedure TForm1.MenuItemEditSelectAllClick(Sender: TObject);
begin
  EmbeddedWB1.SelectAll;
end;

procedure TForm1.MenuItemEditUndoClick(Sender: TObject);
begin
  ToolButtonUndo.Click;
end;

procedure TForm1.MenuItemFileExitClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.MenuItemFileNewClick(Sender: TObject);
begin
  ToolButtonNew.Click;
end;

procedure TForm1.MenuItemFileOpenClick(Sender: TObject);
begin
  ToolButtonOpen.Click;
end;

procedure TForm1.MenuItemFilePageSetupClick(Sender: TObject);
begin
  EmbeddedWB1.PageSetup;
end;

procedure TForm1.MenuItemFilePrintClick(Sender: TObject);
begin
  EmbeddedWB1.Print;
end;

procedure TForm1.MenuItemFilePrintPreviewClick(Sender: TObject);
begin
  EmbeddedWB1.PrintPreview;
end;

procedure TForm1.MenuItemFileSaveClick(Sender: TObject);
begin
  ToolButtonSave.Click;
end;

procedure TForm1.MenuItemInsertHorizontalLineClick(Sender: TObject);
begin
  ToolButtonInsertHorizontalLine.Click;
end;

procedure TForm1.MenuItemInsertHyperlinkClick(Sender: TObject);
begin
  ToolButtonInsertHyperlink.Click;
end;

procedure TForm1.MenuItemInsertPictureClick(Sender: TObject);
begin
  ToolButtonInsertPicture.Click;
end;

procedure TForm1.MenuItemViewSourceClick(Sender: TObject);
begin
  EmbeddedWB1.ViewPageSourceHtml;
end;

procedure TForm1.SaveAndSync;
var
  Val: string;
  LvTempHtml: TStringList;
begin
  try
    LvTempHtml := TStringList.Create;
    if EditDesigner1.RemoveDesigner = S_OK then
    begin
      IsloadingTime := True;
      SynEdit1.Lines.BeginUpdate;
      SynEdit1.Lines.Clear;
      EditDesigner1.SaveToFile(TempFilePath);
      LvTempHtml.LoadFromFile(TempFilePath);
      for Val in LvTempHtml do
        SynEdit1.Lines.Add(Val);
      SynEdit1.Lines.EndUpdate;
    end;
  finally
    EmbeddedWB1.Navigate(TempFilePath);
    EditDesigner1.ConnectDesigner;
    FreeAndNil(LvTempHtml);
    IsloadingTime := False;
  end;
end;

procedure TForm1.SyncDesigner;
var
  LvLine: string;
  LvTempHtml: TStringList;
begin
  if IsloadingTime then
    Exit;

  LvTempHtml := TStringList.Create;
  try
    try
      for LvLine in SynEdit1.Lines do
        LvTempHtml.Add(LvLine);

      LvTempHtml.WriteBOM := True;
      LvTempHtml.SaveToFile(TempFilePath, TEncoding.UTF8);
      if EditDesigner1.RemoveDesigner = S_OK then
      begin
        EmbeddedWB1.Navigate(TempFilePath);
        UpdateDesigner;
      end;
    except
    end;
  finally
    if EmbeddedWB1.CanFocus then  //Do not Remove this line
      EmbeddedWB1.SetFocusToDoc;  //Do not Remove this line

    if SynEdit1.CanFocus then //Do not Remove this line
      SynEdit1.SetFocus; //Do not Remove this line

    FreeAndNil(LvTempHtml);
  end;
end;

procedure TForm1.SyncEditor;
var
  LvTempHtml: TStringList;
  LvVal: string;
  TempVal: TStringList;
  FirstStart, LastStart: Boolean;
begin
  FirstStart := False;
  LastStart := False;
  LvTempHtml := TStringList.Create;
  try
    EmbeddedWB1.ViewPageSourceHtmlToStrings(LvTempHtml);
    IsloadingTime := True;
    SynEdit1.Lines.Clear;
    SynEdit1.Lines.Add('<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">');
    for LvVal in LvTempHtml do
    begin
      if (not FirstStart) and (LeftStr(UpperCase(LvVal.Trim), 6) = UpperCase('<HEAD>')) then
      begin
        SynEdit1.Lines.Add('<HTML>' + LvVal);
        FirstStart := True;
      end
      else if (not LastStart) and (RightStr(UpperCase(LvVal.Trim), 7) = UpperCase('</BODY>')) then
      begin
        SynEdit1.Lines.Add(LvVal + '</HTML>');
        LastStart := True;
      end
      else
        SynEdit1.Lines.Add(LvVal);
    end;
    IsloadingTime := False;
  finally
    FreeAndNil(LvTempHtml);
    FreeAndNil(TempVal);
  end;
end;

procedure TForm1.SynEdit1Change(Sender: TObject);
begin
  SyncDesigner;
end;

procedure TForm1.SynEdit1StatusChange(Sender: TObject;
  Changes: TSynStatusChanges);
begin
  // caret position has changed
  if Changes * [scAll, scCaretX, scCaretY] <> [] then
  begin
    Statusbar1.SimpleText := Format('Ln:%6d, Col:%3d',
      [SynEdit1.CaretY, SynEdit1.CaretX]);
  end;
end;

procedure TForm1.ToolButtonSyncClick(Sender: TObject);
begin
  SaveAndSync;
end;

procedure TForm1.ToolButtonTrackClick(Sender: TObject);
begin
  TrackToggle := not TrackToggle;
  ToolButtonTrack.Down := TrackToggle;
end;

procedure TForm1.aFindExecute(Sender: TObject);
begin
  if SynEdit1.Focused then
  begin
    FSelPos := 0;
    FindDialog1.Execute;
  end;
end;

procedure TForm1.ComboBoxFontHTMLSizeChange(Sender: TObject);
var
  LvSize: String;
begin
  LvSize := (Sender as TComboBox).Text;
  EditDesigner1.SetFontSize(StrToInt(LvSize[1]));
  SyncEditor;
end;

procedure TForm1.ComboBoxFontNameChange(Sender: TObject);
begin
  EditDesigner1.SetFont(ComboBoxFontName.Text);
  SyncEditor;
end;

procedure TForm1.ComboBoxFontNameCloseUp(Sender: TObject);
begin
  EmbeddedWB1.SetFocus;
end;

procedure TForm1.UpdateDesigner;
begin
  EditDesigner1.ConnectDesigner;// = S_OK
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    EditDesigner1.RemoveDesigner;
  except
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  ridx: integer;
  DC: HDC;
  function EnumFontsProc(var LogFont: TLogFont; var TextMetric: TTextMetric; FontType: Integer; Strings: TStrings): Integer; stdcall;
  begin
    Strings.Add(LogFont.lfFaceName);
    Result := 1
  end;
begin
  try //Catch system installed fontnames.
    DC := GetDC(0);
    EnumFonts(DC, nil, @EnumFontsProc, Pointer(ComboBoxFontName.Items));
  finally
    ReleaseDC(0, DC);
    ComboBoxFontName.Sorted := True
  end;

 { The D4Demo uses this...
  OpenDialog1.Filter := GetHighlightersFilter(fHighlighters) +
    'All files|*.*|';
  If you set SynMultiSyn1.DefalutFilter at Design time, you get a
  repeat filter if it is the same as another highlighter. }
  OpenDialog1.Filter := SynMultiSyn1.DefaultFilter;
  SaveDialog1.Filter := SynMultiSyn1.DefaultFilter;
{ Set SynMultiSyn1 Filter to HTML because that is the example I'm
  using. }
  SynMultiSyn1.DefaultFilter := SynHTMLSyn1.DefaultFilter;

{ Load Completion and Autocomplete from user maintained text files }
  SynCompletionProposal1.ItemList.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'SynCP.txt');
  SynAutoComplete1.AutoCompleteList.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'SynAC.txt');
  TempFilePath := ExtractFilePath(ParamStr(0)) + 'Test.html';
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  EmbeddedWB1.Constraints.MinWidth := (Self.Width div 3);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  ToolButtonNew.Click;
end;

function TForm1.FileIsBusy(AFileName: string): Boolean;
var
  F: Integer;
begin
  F := FileOpen(AFileName, fmShareExclusive);
  Result := F = -1;
  FileClose(F);
end;

function TForm1.WaitFile(AFileName: string; ASpeepDelay: integer): Boolean;
begin
  while FileIsBusy(AFileName) do
    Sleep(ASpeepDelay);
  Result := True;
end;

procedure TForm1.FindDialog1Find(Sender: TObject);
var
  I : Integer;
  a,b, c : char;
  s : string;
  fertig : boolean;
begin
  i := SynEdit1.selstart;
  if ((i =1) and (not (frdown in FindDialog1.Options))) or ((i= length(SynEdit1.Lines.Text)) and (frdown in FindDialog1.Options)) then
    ShowMessage('not found')
  else begin
    if (frdown in FindDialog1.Options) then
      i := i + 1;

    repeat
      fertig := false;
      if (frdown in FindDialog1.Options) then
        i := i + 1
      else i := i - 1;

      s := AnsiUpperCase(SynEdit1.Lines.Text[i]);
      if (s = AnsiUpperCase(FindDialog1.FindText[1])) then begin
        s := copy(SynEdit1.Lines.Text, i, length(FindDialog1.FindText));
        if (frMatchcase in FindDialog1.Options) then begin
          if s = FindDialog1.FindText then
            fertig := true;
        end else begin
          if AnsiUpperCase(s) = AnsiUpperCase(FindDialog1.FindText) then
            fertig := true;
        end;

        if fertig then begin
          SynEdit1.SelStart := i - 1;
          SynEdit1.SelLength := length(FindDialog1.FindText);
          if (frWholeWord in FindDialog1.Options) then begin
            a := SynEdit1.Lines.Text[SynEdit1.SelStart];
            b := SynEdit1.Lines.Text[SynEdit1.SelStart + SynEdit1.SelLength + 1];
            if (a in [#48..#57, #65..#90, #97..#122]) or  (b in [#48..#57, #65..#90, #97..#122]) then
              fertig := false;
          end;
        end;
      end;
      if (i = 1) or (i = length(SynEdit1.Lines.Text)) then begin
      fertig := true;
      ShowMessage('not found');
      end;
    until (fertig = true);
    FocusControl(SynEdit1);
  end;
end;
end.

