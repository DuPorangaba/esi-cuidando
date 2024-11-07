#language: pt

Funcionalidade: perguntar sobre despesa
    Para verificar o formulário de pergunta com o e-SIC
    Sendo qualquer usuário, cadastrado ou não
    Posso enviar uma pergunta sobre uma despesa

    Contexto: acessar tela de Quero Perguntar
        Dado que o usuário consiga acessar o modal O que deseja perguntar
    
    Cenário: Enviar a pergunta
        Quando o usuário escolher o órgão como "Casa Civil" 
        E perguntar "Gostaria de saber em quais escolas da cidade ocorreram as reformas"
        E pressionar o botão "Enviar"
        Então deve exibir uma mensagem indicando sucesso ou erro
    
    Cenário: Tentar enviar pergunta sem texto 
        Quando o usuário escolher o órgão como "Casa Civil"
        Então o botão "Enviar" está desativado
    
