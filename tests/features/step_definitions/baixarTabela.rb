require 'net/http'
require 'uri'

Dado('que já estou na lista de tabela de distribuição de recursos') do
    visit 'https://devcolab.each.usp.br/dadosorcamentarios/'
  end
  
  Quando('clico no botão {int}.csv') do |int|
    @download_link = find('a[href$=".csv"]', text: "#{2020}.csv")[:href]
  end
  
  Então('o link para arquivo csv deve ser acessível') do
    uri = URI.parse(@download_link)
    response = Net::HTTP.get_response(uri)
  
  # Verifica se o link retorna uma resposta bem-sucedida (200 OK)
    expect(response.code).to eq("200")
  end