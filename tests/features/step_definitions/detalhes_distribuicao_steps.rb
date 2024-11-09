Quando('acessar a página de detalhes da distribuição de recursos') do
    visit 'https://cuidando.vc/despesa/2022/2022.64.10.15.451.3022.44903900.90.39.0.101.9420'
end

Quando('acessar a página de distribuição de recursos anual') do
    visit 'https://cuidando.vc/2022/1'
end

Então('deve visualizar o nome do programa com o título {string}') do |titulo_programa_esperado|
    programa = find('.c-despesa-main__title')
    expect(programa).to have_content(titulo_programa_esperado)
end

Então('deve visualizar a descrição da despesa com o título {string}') do |titulo_despesa_esperado|
    despesa = find('.c-despesa-main__subtitle').text
    expect(despesa).to have_content(titulo_despesa_esperado)
end

Então('deve visualizar a seção de detalhes da despesa') do
    expect(page).to have_css('.c-despesa-details')
end

Então('deve visualizar a tabela de distribuição de recursos') do
    # Verifica se existe um elemento <table> com a classe .min-w-full
    expect(page).to have_css('table.min-w-full')
  end 