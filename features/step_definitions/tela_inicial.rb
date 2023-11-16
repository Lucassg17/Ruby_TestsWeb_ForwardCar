require_relative '../utils/excel.rb'

Dado('estou na pagina inicial do site') do
  visit ('/')
  home.load
end

############################################ @criar_registro

Quando('vou para a tela criacao de registro') do
  sleep(3)
  home.guest.click
  sleep(2)
  home.btn_tela_register.click
end

Quando('preencho os campos') do |table|
  sleep(3)
  list = table.hashes

  primeira_linha_tabela = list[0]
  planilha = primeira_linha_tabela['planilha']
  aba = primeira_linha_tabela['aba']

  arq_sheet = Excel.new
  arq_sheet.get_arq_sheet(planilha, aba)

  dados_register = Register.new
  linhas = dados_register.ler_dados_excel_f_name

  i = 0
  while i <= linhas.size - 1
    home.first_name_tela_register.send_keys(dados_register.ler_dados_excel_f_name[i])
    home.last_name_tela_register.send_keys(dados_register.ler_dados_excel_l_name[i])
    home.username_tela_register.send_keys(dados_register.ler_dados_excel_u_name[i])
    home.password_tela_register.send_keys(dados_register.ler_dados_excel_pass[i])
    sleep(2)
    home.btn_register.click

    if i != linhas.size - 1
      step 'vou para a tela criacao de registro'
    end

    i += 1

  end
end

Então('meu usuario e criado com sucesso') do
  sleep(3)
  expect(page).to have_current_path('http://localhost:3434/cars-app/#/login', url:true)
end

################################################ @realizar_login

Quando('crio um registro') do |table|
  step 'vou para a tela criacao de registro'
  sleep(3)
  list = table.hashes

  primeira_linha_tabela = list[0]
  planilha = primeira_linha_tabela['planilha']
  aba = primeira_linha_tabela['aba']

  arq_sheet = Excel.new
  arq_sheet.get_arq_sheet(planilha, aba)

  dados_register = Register.new
  linhas = dados_register.ler_dados_excel_f_name

  i = 0
  while i <= linhas.size - 1
    home.first_name_tela_register.send_keys(dados_register.ler_dados_excel_f_name[i])
    home.last_name_tela_register.send_keys(dados_register.ler_dados_excel_l_name[i])
    home.username_tela_register.send_keys(dados_register.ler_dados_excel_u_name[i])
    home.password_tela_register.send_keys(dados_register.ler_dados_excel_pass[i])
    sleep(2)
    home.btn_register.click

    if i != linhas.size - 1
      step 'vou para a tela criacao de registro'
    end

    i += 1

  end
end

Quando('preencho os campos da tela de login') do
  sleep(3)

  dados_login = Register.new
  linhas = dados_login.ler_dados_excel_u_name

  i = 0
  while i <= linhas.size - 1
    home.username_tela_login.send_keys(dados_login.ler_dados_excel_u_name[i])
    home.password_tela_login.send_keys(dados_login.ler_dados_excel_pass[i])
    sleep(3)
    home.btn_login.click

    if i != linhas.size - 1
      sleep(3)
      home.btn_autenc_user.click
      sleep(3)
      home.btn_logout.click
      sleep(2)
      home.guest.click
      sleep(2)
      home.btn_tela_login.click
    end

    i += 1

  end
end

Então('valido que meu login ocorreu com sucesso') do
  sleep(2)
  expect(home.btn_autenc_user.text).to eql('Sofia Gomes')
end
