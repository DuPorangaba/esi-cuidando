# Sobre
Projeto desenvolvido na disciplina de Engenharia de Sistemas de Informação I. 

A proposta do projeto é contribuir com a manutenção do código legado do projeto Cuidando do Meu Bairro (https://cuidando.vc/). 
O cuidando tem o objetivo de mapear a execução do orçamento municipal de São Paulo, para aumentar a transparência e visibilidade dos gastos públicos no município. 

O projeto foi desenvolvido utilizando a arquitetura de microserviços, sendo composto pelos seguintes:
- esi-website: cliente JS que é aberto pelo navegador e acessa os demais serviços
- esi-gastos-abertos: fornecimento dos dados da execução orçamentária e funcionalidade de geolocalização dos gastos
- esi-vira-lata: informação sobre o usuário e autenticação (via token para acessar os outros microserviços)
- esi-tagarela: funcionalidade de comentários sobre os pontos no mapa
- esi-esicLivre: funcionalidade de pedir acessa à informações, interface com eSIC

O projeto está originalmente neste repositório do [GitLab](https://gitlab.com/cuidandodomeubairro). 
Com o objetivo de unirmos todos os microserviços em um único repositório, optamos por criar um repositório para cada e uní-los nesse repositório como submódulos (git submodules)

### Integrantes do Projeto
- Eduarda Lima Porangaba
- Eriz Ye Ze Tao
- Fernando Liu
- Thomas Koch Cestari
- Vitor Machado Oliveira

# CodeClimate
**esi-website** [![Maintainability](https://api.codeclimate.com/v1/badges/61c313545307b69a204e/maintainability)](https://codeclimate.com/github/DuPorangaba/esi-website/maintainability) 

**esi-gastos-abertos** [![Maintainability](https://api.codeclimate.com/v1/badges/6420abd78c86c396192c/maintainability)](https://codeclimate.com/github/DuPorangaba/esi-gastos-abertos/maintainability)

**esi-vira-lata** [![Maintainability](https://api.codeclimate.com/v1/badges/43f2e1c9caf3cceb2e8a/maintainability)](https://codeclimate.com/github/DuPorangaba/esi-viralata/maintainability)

**esi-tagarela** [![Maintainability](https://api.codeclimate.com/v1/badges/40d0692d3126172db025/maintainability)](https://codeclimate.com/github/DuPorangaba/esi-tagarela/maintainability)

**esi-esicLivre** [![Maintainability](https://api.codeclimate.com/v1/badges/09d66297e36628b90633/maintainability)](https://codeclimate.com/github/DuPorangaba/esi-esicLivre/maintainability)

# Instruções

### Clonando o Repositório
```
git clone --recurse-submodules https://github.com/DuPorangaba/esi-cuidando.git
```
