#language: pt
Funcionalidade: Visualizar detalhes de uma distribuição de recursos
    Para verificar informações sobre a distribuição de recursos
    Sendo um usuário não autenticado
    Posso visualizar os detalhes do programa e da despesa

    Cenário: Exibir detalhes do programa e da despesa
        Quando acessar a página de detalhes da distribuição de recursos
        Então deve visualizar o nome do programa com o título "Requalificação e Promoção da Ocupação dos Espaços Públicos"
        E deve visualizar a descrição da despesa com o título "Requalificação de Sede Social da Associação Comunitária do Jardim das Oliveiras, CNPJ 46.306.528/0001-94, localizada na Av. Dr. Almiro Leal da Costa, 456 - Jardim das Oliveiras, CEP 08122-260."
        E deve visualizar a seção de detalhes da despesa