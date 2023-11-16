#language: pt

Funcionalidade: Criação de usuário

@criar_registro
Cenário: Criar um registro com sucesso
    Dado estou na pagina inicial do site
    Quando vou para a tela criacao de registro
    E preencho os campos
        |planilha                  |aba     |
        |\MassaDadosForwardCar.xlsx|Register|
    Então meu usuario e criado com sucesso

@realizar_login
Cenário: Realizar um login com sucesso
    Dado estou na pagina inicial do site
    Quando crio um registro
        |planilha                  |aba     |
        |\MassaDadosForwardCar.xlsx|Register|
    E preencho os campos da tela de login
    Então valido que meu login ocorreu com sucesso