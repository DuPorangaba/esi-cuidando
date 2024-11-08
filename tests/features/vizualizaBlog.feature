#language: pt
@featureBlog
Funcionalidade: Vizualizar página do Blog do Cuidando
    Para ler se atualizar sobre os gastos públicos
    Sendo qualquer usuário, cadastrado ou não
    Posso ver o blog do Cuidando

    Contexto: acessar página do blog do Cuidando meu bairro
        

    Cenário: Acessando pelo menu inicial
        Dado que o usuário esteja na página inicial do "Cuidando do Meu Bairro"
        Quando clico no botão Blog
        Então deve abrir uma nova página
        E devo ver o Blog

    Cenário: Acessando pelo link sobre
        Dado que o usuário esteja na página Sobre do Cuidando do Meu Bairro
        Quando clico no link "aqui" do blog
        Então deve abrir uma nova página
        E devo ver o Blog