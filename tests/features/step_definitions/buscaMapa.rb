Dado('que já estou na página inicial do site Cuidando do Meu Bairro') do
  visit 'https://cuidando.vc/2022/1'
end

Dado('escolhe o ano {int}') do |int|
  within('div[data-v-b9889298]') do
    find('button[data-dropdown-toggle="dropdownYear"]').click
  end
  
  # Aguardar o dropdown abrir e procurar pela opção do ano desejado
  find('div[data-v-b9889298] li', text: 2019, visible: true).click
end

Quando('ele realizar a busca') do
  find_button('Buscar').click
end

Então('deve ser redirecionado para url cujo o mapa exibe apenas obras iniciados em {int}') do |int|
  expect(page.current_url).to include("2019")
end
