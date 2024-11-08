Dado('que o usuário esteja na página inicial do {string}') do |string|
    visit 'https://cuidando.vc/2022/1'
  end
  
  Quando('clico no botão Sobre') do
    page.find('a',text:'Sobre').click
  end
  
  Então('devo ver a página Sobre') do
    expect(page).to have_current_path('https://cuidando.vc/sobre')
  end