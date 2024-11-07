#language: pt
Funcionalidade: Baixar tabela de distribuição de recursos
    Sendo um usuário qualquer

    Cenário: baixar tabela de distribuição de recursos de 2020
        Dado que já estou na lista de tabela de distribuição de recursos
        Quando clico no botão 2020.csv
        Então o link para arquivo csv deve ser acessível