#language: pt
Funcionalidade: Busca no mapa
    Sendo um usuário qualquer
    
    Cenário: Busca de projeto público iniciado em 2019
    Dado que já estou na página inicial do site Cuidando do Meu Bairro
    E escolhe o ano 2019
    Quando ele realizar a busca
    Então deve ser redirecionado para url cujo o mapa exibe apenas obras iniciados em 2019
