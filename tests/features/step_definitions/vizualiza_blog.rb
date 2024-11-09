Quando('clico no botão Blog') do
    page.find('a',text:'Blog').click
  end

Então('deve abrir uma nova página') do
    page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
  end
  
  Então('devo ver o Blog') do
    expect(page).to have_current_path('https://colab.each.usp.br/blog/tag/cuidando-do-meu-bairro/')
  end
  
  Dado('que o usuário esteja na página Sobre do Cuidando do Meu Bairro') do 
    visit 'https://cuidando.vc/sobre'
  end
  
  Quando('clico no link {string} do blog') do |string|
    find("a[href='https://colab.each.usp.br/blog/tag/cuidando-do-meu-bairro/']").click
  end
  