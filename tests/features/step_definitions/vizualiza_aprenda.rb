Quando('clico no botão Aprenda +') do
    page.find('a',text:'Aprenda +').click
  end

Então('devo ver a página Aprenda +') do
    expect(page).to have_current_path('https://cuidando.vc/glossario')
  end