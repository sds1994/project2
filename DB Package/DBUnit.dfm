object MyDataModule: TMyDataModule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 337
  Width = 581
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initi' +
      'al Catalog=MyData;Data Source=SAMYAK;'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 152
    Top = 56
  end
  object SelectDataProc: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'selectData'
    Parameters = <>
    Left = 352
    Top = 56
    object SelectDataProcID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object SelectDataProcfname: TWideStringField
      FieldName = 'fname'
      Size = 50
    end
    object SelectDataProclname: TWideStringField
      FieldName = 'lname'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = SelectDataProc
    Left = 272
    Top = 152
  end
end
