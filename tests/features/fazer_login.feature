#language: pt

Funcionalidade: fazer login
    Para realizar um login
    Sendo um usuário já cadastrado
    Posso acessar as funcionalidades do site

    Contexto: acessar o modal de login
        Dado que o usuário acessa a tela de login
    
    Cenário: preencher as credenciais de acesso e enviar
        Quando o usuário preencher as informações corretas de login
        Então deve aparecer como usuário logado

    