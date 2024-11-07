#language: pt

Funcionalidade: acompanhar despesa
    Para verificar o botão de acompanhar desepesa
    Sendo um usuário cadastrado e logado
    Posso acompanhar atualizações sobre uma despesa

    Contexto: acessar tela de despesa
        Dado que o usuário consiga acessar a tela de uma despesa
        E usuário está logado
    
    Cenário: Clicar para Acompanhar Despesa
        Quando o usuário clicar no botão Acompanhar Despesa
        Então na página do perfil do usuário deve aparecer a despesa

    Cenário: Clicar para Desacompanhar Despesa
        Quando o usuário clicar no botão Desacompanhar Despesa
        Então na página do perfil do usuário não deve aparecer Itens Acompanhados

    