class Excel

  CAMINHO = 'C:\Users\Lucas Gomes\Ruby_Atividades\MassaDados'

  @@wb = 0
  @@ws = 0

  def get_arq_sheet(xsFile, xlSheet)
    $arq = xsFile
    $sheet = xlSheet
  end

  def open_workbook
    require 'roo'

    @@wb = Roo::Spreadsheet.open(CAMINHO + $arq)
    @@ws = @@wb.sheet($sheet)

    return @@ws
  end

  def close_workbook
    @@wb.close
  end
end

class Register
  def ler_dados_excel_f_name

    ler_f_name = Excel.new
    ws = ler_f_name.open_workbook

    i = 0
    while i <= ws.last_row
      row = ws.column(1)
      f_name = row[1..]
      i += 1
    end

    ler_f_name.close_workbook

    return f_name
  end

  def ler_dados_excel_l_name

    ler_l_name = Excel.new
    ws = ler_l_name.open_workbook

    i = 0
    while i <= ws.last_row
      row = ws.column(2)
      l_name = row[1..]
      i += 1
    end

    ler_l_name.close_workbook

    return l_name
  end

  def ler_dados_excel_u_name
    ler_u_name = Excel.new
    ws = ler_u_name.open_workbook

    i = 0
    while i <= ws.last_row
      row = ws.column(3)
      u_name = row[1..]
      i += 1
    end

    ler_u_name.close_workbook

    return u_name
  end

  def ler_dados_excel_pass

    ler_pass = Excel.new
    ws = ler_pass.open_workbook

    i = 0
    while i <= ws.last_row
      row = ws.column(4)
      pass = row[1..]
      i += 1
    end

    ler_pass.close_workbook

    return pass
  end
end

class Search
  def ler_dados_excel_marca_carro

    ler_marca = Excel.new
    ws = ler_marca.open_workbook

    i = 0
    while i <= ws.last_row
      row = ws.column(1)
      marca = row[1..]
      i += 1
    end

    ler_marca.close_workbook

    return marca
  end

  def ler_dados_excel_pesquisa_de_cor_carro

    ler_cor = Excel.new
    ws = ler_cor.open_workbook

    i = 0
    while i <= ws.last_row
      row = ws.column(1)
      cor = row[1..]
      i += 1
    end

    ler_cor.close_workbook

    return cor
  end

  def ler_dados_excel_result_cor_carro

    ler_result_cor = Excel.new
    ws = ler_result_cor.open_workbook

    i = 0
    while i <= ws.last_row
      row = ws.column(2)
      result_cor = row[1..]
      i += 1
    end

    ler_result_cor.close_workbook

    return result_cor
  end

  def ler_dados_excel_nome_carro

    ler_nome_carro = Excel.new
    ws = ler_nome_carro.open_workbook

    i = 0
    while i <= ws.last_row
      row = ws.column(3)
      nome_carro = row[1..]
      i += 1
    end

    ler_nome_carro.close_workbook

    return nome_carro
  end

  def ler_dados_excel_pesquisa_de_modelo_carro

    ler_modelo = Excel.new
    ws = ler_modelo.open_workbook

    i = 0
    while i <= ws.last_row
      row = ws.column(1)
      modelo = row[1..]
      i += 1
    end

    ler_modelo.close_workbook

    return modelo
  end

  def ler_dados_excel_nome_modelo_carro

    ler_nome_modelo = Excel.new
    ws = ler_nome_modelo.open_workbook

    i = 0
    while i <= ws.last_row
      row = ws.column(2)
      n_modelo = row[1..]
      i += 1
    end

    ler_nome_modelo.close_workbook

    return n_modelo
  end
end

# teste = Register.new

# puts teste.ler_dados_excel_f_name
# puts teste.ler_dados_excel_l_name
# puts teste.ler_dados_excel_u_name
# puts teste.ler_dados_excel_pass
