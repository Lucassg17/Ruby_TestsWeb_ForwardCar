class Excel

  CAMINHO = 'C:\Users\Lucas Gomes\Ruby_Atividades\MassaDados\MassaDadosForwardCar.xlsx'

  @@wb = 0
  @@ws = 0

  def open_workbook
    require 'roo'

    @@wb = Roo::Spreadsheet.open(CAMINHO)
    @@ws = @@wb.sheet('Register')

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

# teste = Register.new

# puts teste.ler_dados_excel_f_name
# puts teste.ler_dados_excel_l_name
# puts teste.ler_dados_excel_u_name
# puts teste.ler_dados_excel_pass
