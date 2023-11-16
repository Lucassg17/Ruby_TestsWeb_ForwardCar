#language: pt

Funcionalidade: Tela Search

@select_marca_carro
Cenário: Selecionar uma marca de carro com sucesso
    Dado estou na pagina inicial do site
    Quando realizo login
        |planilha                  |aba     |
        |\MassaDadosForwardCar.xlsx|Register|
    Então na tela Search apos selecionar uma marca de carro valido a pesquisa com sucesso
        |planilha                  |aba        |
        |\MassaDadosForwardCar.xlsx|MarcaCarros|

@select_cor_carro
Cenário: Selecionar uma cor de carro com sucesso
    Dado estou na pagina inicial do site
    Quando realizo login
        |planilha                  |aba     |
        |\MassaDadosForwardCar.xlsx|Register|
    Então na tela Search ao selecionar uma cor de carro valido a pesquisa com sucesso
        |planilha                  |aba      |
        |\MassaDadosForwardCar.xlsx|CorCarros|

@select_modelo_carro
Cenário: Selecionar um modelo de carro com sucesso
    Dado estou na pagina inicial do site
    Quando realizo login
        |planilha                  |aba     |
        |\MassaDadosForwardCar.xlsx|Register|
    Então na tela Search ao selecionar uma modelo de carro valido a pesquisa com sucesso
        |planilha                  |aba         |
        |\MassaDadosForwardCar.xlsx|ModeloCarros|