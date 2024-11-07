#language: pt

Funcionalidade: Vizualizar página Sobre
    Para ler mais sobre projeto
    Sendo qualquer usuário, cadastrado ou não
    Posso ver página Sobre

    Contexto: acessar tela Sobre do Cuidando meu bairro
        Dado que o usuário esteja na página inicial do "Cuidando do Meu Bairro"

    Cenário: Conseguiu acessar tela Sobre
        Quando clico no botão "Sobre"
        Então devo ver a página Sobre