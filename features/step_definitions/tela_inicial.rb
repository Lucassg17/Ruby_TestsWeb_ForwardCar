require_relative '../utils/excel.rb'

Dado('estou na pagina inicial do site') do
  visit ('/')
  home.load
end

Quando('vou para a tela criacao de registro') do
  sleep(3)
  home.guest.click
  sleep(2)
  home.btn_tela_register.click
end

Quando('preencho os campos') do #|table|
  sleep(3)
  # list = table.hashes

  # primeira_linha_tabela = list[0]
  # planilha = primeira_linha_tabela['planilha']
  # aba = primeira_linha_tabela['aba']

  pega_planilha_aba = Excel.new
  dados_register = Register.new
  linhas = pega_planilha_aba.open_workbook

  i = 2
  while i <= linhas.last_row
    list_f_name_register = [dados_register.ler_dados_excel_f_name]
    list_l_name_register = [dados_register.ler_dados_excel_l_name]
    list_u_name_register = [dados_register.ler_dados_excel_u_name]
    list_pass_register = [dados_register.ler_dados_excel_pass]


    home.first_name_tela_register.send_keys(dados_register.ler_dados_excel_f_name)
    home.last_name_tela_register.send_keys(dados_register.ler_dados_excel_l_name)
    home.username_tela_register.send_keys(dados_register.ler_dados_excel_u_name)
    home.password_tela_register.send_keys(dados_register.ler_dados_excel_pass)
    sleep(3)
    home.btn_register.click
    i += 1
  end

  # list_register.each do |valores|
  #   home.first_name_tela_register.send_keys(dados_register.ler_dados_excel_f_name)
  # end

end

Então('meu usuario e criado com sucesso') do
  sleep(5)
  expect(page).to have_current_path('http://localhost:3434/cars-app/#/login', url:true)
end
