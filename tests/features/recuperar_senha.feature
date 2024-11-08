#language: pt

Funcionalidade: recuperar senha
    Para recuperar a senha
    Sendo um usuário já cadastrado
    Posso voltar a usar o login do site

    Contexto: acessar o modal de recuperar a senha
        Dado que o usuário acessa o modal de recuperar senha
    
    Cenário: preencher as credenciais de acesso e enviar
        Quando o usuário preencher as informações de recuperação
        Então deve receber um feedback positivo de recuperação

    