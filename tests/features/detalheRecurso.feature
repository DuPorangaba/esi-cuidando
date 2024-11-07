#language: pt
Funcionalidade: visualiza mais informações em JSON de uma distribuição de recursos
    Sendo um usuário qualquer

    Cenário: visualizar a despesa da Operação e Manutenção do Portal da PMSP
        Dado que já estou na página com detalhes da despesa com nome Operação e Manutenção do Portal da PMSP
        Quando o botão mais informações é clicado
        Então deve ser exibido mais informações em JSON da Operação e Manutenção do Portal da PMSP