#language: pt

Funcionalidade: perguntar sobre despesa
    Para verificar o redirecionamento para pesquisar licitação
    Sendo qualquer usuário, cadastrado ou não
    Posso ser redirecionado para pesquisar licitação

    Contexto: acessar tela de despesa
        Dado que o usuário consiga acessar a tela de uma despesa
    
    Cenário: Clica no link
        Quando o usuário clica no link Pesquisa licitação
        Então abre uma nova janela para a paǵina "e-negocioscidadesp.prefeitura.sp.gov.br"
    


        


