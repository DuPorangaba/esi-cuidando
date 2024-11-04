Quando('acessar a página de análise de perguntas') do
    visit 'https://cuidando.vc/despesa/2022/2022.64.10.15.451.3022.44903900.90.39.0.101.9420'
end
  
Então('deve visualizar o título de perguntas com o texto que contém "Perguntas"') do
    titulos = all('.capitalize')
    titulo = titulos[0].text  # Índice para perguntas
    expect(titulo).to match(/\d+ Perguntas/)
end
