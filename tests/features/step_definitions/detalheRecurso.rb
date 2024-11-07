Dado('que já estou na página com detalhes da despesa com nome Operação e Manutenção do Portal da PMSP') do
    visit 'https://cuidando.vc/despesa/2022/2022.11.10.24.126.3012.33904000.90.40.0.2401'
  end
  
  Quando('o botão mais informações é clicado') do
    find_button('Mais informações').click
  end
  
  Então('deve ser exibido mais informações em JSON da Operação e Manutenção do Portal da PMSP') do
    elemento_json = find('code.language-json', match: :first)
    expect(elemento_json).not_to be_nil

  end