Quando('acessar a página de análise de comentários') do
    visit 'https://cuidando.vc/despesa/2022/2022.64.10.15.451.3022.44903900.90.39.0.101.9420'
end
  
Então('deve visualizar o título de comentários com o texto {string}') do |tituloEsperado|
    titulos = all('.capitalize')
    titulo = titulos[1].text
    expect(titulo).to eq(tituloEsperado)
end