object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Easy Json'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    505
    231)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 96
    Top = 16
    Width = 154
    Height = 13
    Caption = 'Easily parse a json with RestDW'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 40
    Width = 489
    Height = 183
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnAbrir: TBitBtn
    Left = 8
    Top = 9
    Width = 75
    Height = 25
    Caption = 'abrir'
    TabOrder = 1
    OnClick = btnAbrirClick
  end
  object DWClientREST: TDWClientREST
    UseSSL = False
    SSLVersions = []
    UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    ContentEncoding = 'multipart/form-data'
    MaxAuthRetries = 0
    ContentType = 'application/json'
    RequestCharset = esUtf8
    ProxyOptions.BasicAuthentication = False
    ProxyOptions.ProxyPort = 0
    RequestTimeOut = 1000
    AllowCookies = False
    HandleRedirects = False
    RedirectMaximum = 1
    VerifyCert = False
    AuthOptions.HasAuthentication = False
    AccessControlAllowOrigin = '*'
    Left = 56
    Top = 24
  end
  object ResponseTranslator: TDWResponseTranslator
    ElementAutoReadRootIndex = True
    ElementRootBaseIndex = -1
    ElementRootBaseName = 'arrayobj35'
    RequestOpen = rtGet
    RequestInsert = rtPost
    RequestEdit = rtPost
    RequestDelete = rtDelete
    RequestOpenUrl = 
      'http://localhost:8082/mobile/comercialize?pDatabase=HOLDER&pSQL=' +
      'select * from custo'
    FieldDefs = <
      item
        FieldName = 'ID_LINHA'
        ElementName = 'ID_LINHA'
        ElementIndex = 0
        FieldSize = 20
        Precision = 0
        DataType = ovString
        Required = False
      end
      item
        FieldName = 'DESC_LINHA'
        ElementName = 'DESC_LINHA'
        ElementIndex = 1
        FieldSize = 20
        Precision = 0
        DataType = ovString
        Required = False
      end
      item
        FieldName = 'STATUS_LINHA'
        ElementName = 'STATUS_LINHA'
        ElementIndex = 2
        FieldSize = 20
        Precision = 0
        DataType = ovString
        Required = False
      end>
    ClientREST = DWClientREST
    Left = 56
    Top = 72
  end
  object Dados: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    MasterCascadeDelete = True
    BinaryRequest = False
    Datapacks = -1
    DataCache = False
    Params = <>
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    RaiseErrors = True
    DWResponseTranslator = ResponseTranslator
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 56
    Top = 120
  end
  object DataSource: TDataSource
    DataSet = Dados
    Left = 56
    Top = 168
  end
end
