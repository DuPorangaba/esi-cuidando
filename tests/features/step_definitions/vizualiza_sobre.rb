Dado('que o usuário esteja na página inicial do {string}') do |string|
    visit 'https://cuidando.vc/2022/1'
  end
  
  Quando('clico no botão {string}') do |string|
    navbar = page.find('#navbar')
    within(navbar) do
      click_link(string)
    end
  end
  
  Então('devo ver a página Sobre') do
    about = page.find('.pg-about')
    within(about) do
      expect(page).to have_content('Implementado por:')
      expect(current_url).to eq('https://cuidando.vc/sobre')
    end
    
  end