class Excel

  $caminho = 'C:\\Users\\Lucas Gomes\\Ruby_Atividades\\MassaDados'

  def ler_dados_excel(xlFile, xlSheet)
    @file = $caminho + '\\' + xlFile

    xslx = Roo::Spreadsheet.open(@file)
  end
end
