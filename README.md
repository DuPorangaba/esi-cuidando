![Github Actions badge](https://github.com/DuPorangaba/esi-cuidando/actions/workflows/ruby.yml/badge.svg?cache-control=no-cache)

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

## Clonando o Repositório
```
git clone --recurse-submodules https://github.com/DuPorangaba/esi-cuidando.git
```

## Rodar Testes
Para rodar os testes, é necessário ter o Ruby instalado ([Ruby Download](https://www.ruby-lang.org/en/documentation/installation/)) e o bundler `gem install bunder`

### Testes de Aceitação
1. Com o repositório clonado, entre no diretório dos tests: `cd tests`
2. Instale as dependências necessárias para rodar os testes: `bundle install`
3. Rode os testes: `cucumber`

### Testes de Caracterização
Os testes de caracterização estão dentro do repositório de cada microserviço.

## Mudanças nos Submódulos
1. Entre no arquivo do submódulo, `cd [path_to_sumodule]`
2. Faça as mudanças necessárias
3. Dê commit e push nas novas mudanças
4. Volte para o diretório principal, nesse caso o diretório esi-cuidando
5. Use `git submodule update --remote <path to submodule>`
6. Se utilizar `git status` será possível ver que o submódulo foi modificado
7. Dê commit e push no diretório principal

Mais informações: [Git Submodules Basic Explanation](https://gist.github.com/gitaarik/8735255)
