################################################ @select_marca_carro

Quando('realizo login') do |table|
  sleep(2)
  home.guest.click
  sleep(2)
  home.btn_tela_login.click

  list = table.hashes

  primeira_linha_tabela = list[0]
  planilha = primeira_linha_tabela['planilha']
  aba = primeira_linha_tabela['aba']

  arq_sheet = Excel.new
  arq_sheet.get_arq_sheet(planilha, aba)

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

Então('na tela Search apos selecionar uma marca de carro valido a pesquisa com sucesso') do |table|
  sleep(3)
  home.btn_search.click
  sleep(5)

  list = table.hashes

  primeira_linha_tabela = list[0]
  planilha = primeira_linha_tabela['planilha']
  aba = primeira_linha_tabela['aba']

  arq_sheet = Excel.new
  arq_sheet.get_arq_sheet(planilha, aba)

  dados_marca_carros = Search.new
  linhas = dados_marca_carros.ler_dados_excel_marca_carro

  i = 0
  while i <= linhas.size - 1

    if home.make_marca_carro.has_no_text?(dados_marca_carros.ler_dados_excel_marca_carro[i - 1])
      sleep(3)
      home.marca_acura.click
      sleep(3)
      expect(home.make_marca_carro.text).to eql(dados_marca_carros.ler_dados_excel_marca_carro[i])
    else
      home.make_marca_carro.click
      sleep(3)
      home.marca_audi.click
      sleep(3)
      expect(home.make_marca_carro.text).to eql(dados_marca_carros.ler_dados_excel_marca_carro[i])
    end

    i += 1

  end
end

################################################ @select_cor_carro

Então('na tela Search ao selecionar uma cor de carro valido a pesquisa com sucesso') do |table|
  sleep(3)
  home.btn_search.click
  sleep(5)

  list = table.hashes

  primeira_linha_tabela = list[0]
  planilha = primeira_linha_tabela['planilha']
  aba = primeira_linha_tabela['aba']

  arq_sheet = Excel.new
  arq_sheet.get_arq_sheet(planilha, aba)

  dados_cor_carros = Search.new
  linhas = dados_cor_carros.ler_dados_excel_pesquisa_de_cor_carro

  i = 0
  while i <= linhas.size - 1
    sleep(2)
    home.camp_search_dados.click
    sleep(1)
    home.camp_search_dados.send_keys(dados_cor_carros.ler_dados_excel_pesquisa_de_cor_carro[i])
    sleep(3)

    if page.has_text?(dados_cor_carros.ler_dados_excel_nome_carro[i])
      home.view_details_first_car_black.click
      sleep(2)
      expect(home.color_black.text).to eql(dados_cor_carros.ler_dados_excel_result_cor_carro[i])
      sleep(3)
      home.btn_ok.click
    else
      home.view_details_car_red.click
      sleep(2)
      expect(home.color_red.text).to eql(dados_cor_carros.ler_dados_excel_result_cor_carro[i])
      sleep(3)
      home.btn_ok.click
    end

    if i != linhas.size - 1
      home.btn_clear_search.click
    end

    i += 1

  end
end

################################################ @select_cor_carro

Então('na tela Search ao selecionar uma modelo de carro valido a pesquisa com sucesso') do |table|
  sleep(3)
  home.btn_search.click
  sleep(5)

  list = table.hashes

  primeira_linha_tabela = list[0]
  planilha = primeira_linha_tabela['planilha']
  aba = primeira_linha_tabela['aba']

  arq_sheet = Excel.new
  arq_sheet.get_arq_sheet(planilha, aba)

  dados_modelo_carros = Search.new
  linhas = dados_modelo_carros.ler_dados_excel_pesquisa_de_modelo_carro

  i = 0
  while i <= linhas.size - 1
    sleep(2)
    home.camp_search_dados.click
    sleep(1)
    home.camp_search_dados.send_keys(dados_modelo_carros.ler_dados_excel_pesquisa_de_modelo_carro[i])
    sleep(3)

    if page.has_text?(dados_modelo_carros.ler_dados_excel_nome_modelo_carro[i - 1])
      expect(home.name_first_car_acura.text).to eql(dados_modelo_carros.ler_dados_excel_nome_modelo_carro[i])
    else
      expect(home.name_first_car_bmw.text).to eql(dados_modelo_carros.ler_dados_excel_nome_modelo_carro[i])
    end

    if i != linhas.size - 1
      home.btn_clear_search.click
    end

    i += 1

  end
end
