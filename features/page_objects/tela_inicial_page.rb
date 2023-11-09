class PageObject < SitePrism::Page
  element :guest, '.ng-scope'
  element :btn_tela_login, :xpath, '/html/body/div[1]/div[1]/div/div/div[2]/ul/li[5]/ul/li[1]/a'
  element :btn_tela_register, :xpath, '/html/body/div[1]/div[1]/div/div/div[2]/ul/li[5]/ul/li[2]/a'
  element :first_name_tela_register, :xpath, '//*[@id="registration-form"]/fieldset/div[1]/input'
  element :last_name_tela_register, :xpath, '//*[@id="registration-form"]/fieldset/div[2]/input'
  element :username_tela_register, :xpath, '//*[@id="registration-form"]/fieldset/div[3]/input'
  element :password_tela_register, :xpath, '//*[@id="registration-form"]/fieldset/div[4]/input'
  element :btn_register, :xpath, '//*[@id="registration-form"]/fieldset/div[5]/button'
  element :btn_have_an_account, :xpath, '//*[@id="registration-form"]/fieldset/div[6]/div/div/a'
  element :username_tela_login, :xpath, '//*[@id="login-form"]/fieldset/div[1]/input'
  element :password_tela_login, :xpath, '//*[@id="login-form"]/fieldset/div[2]/input'
  element :btn_login, :xpath, '//*[@id="login-form"]/fieldset/div[2]/input'
  element :btn_dont_have_an_account, :xpath, '//*[@id="login-form"]/fieldset/div[4]/div/div/a'

  def realizar_login
    username_tela_login.send_keys()
    password_tela_login.send_keys()
    sleep(5)
    btn_login.click
    sleep(5)
  end

  def criar_registro
    first_name_tela_register.send_keys()
    last_name_tela_register.send_keys()
    username_tela_register.send_keys()
    password_tela_register.send_keys()
    sleep(5)
    btn_register.click
    sleep(5)
  end
end
