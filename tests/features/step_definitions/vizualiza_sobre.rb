Dado('que o usuário esteja na página inicial do {string}') do |string|
    visit 'https://cuidando.vc/2022/1'
  end
  
<<<<<<< HEAD
  Quando('clico no botão Sobre') do
    page.find('a',text:'Sobre').click
  end
  
  Então('devo ver a página Sobre') do
    expect(page).to have_current_path('https://cuidando.vc/sobre')
=======
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
    
>>>>>>> 7dc63caf5a448f2d4d6c4469c42d33e52b25f97c
  end