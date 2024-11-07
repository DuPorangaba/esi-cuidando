Dado('que o usuário esteja na página inicial do {string}') do |string|
    visit 'https://cuidando.vc/2022/1'
  end
  
  Quando('clico no botão {string}') do |string|
    click_link('Sobre')
  end
  
  Então('devo ver a página Sobre') do
    expect(current_url).to eq('https://cuidando.vc/sobre')
  end