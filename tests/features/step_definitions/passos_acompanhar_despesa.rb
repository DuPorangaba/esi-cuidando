Dado('que o usuário consiga acessar a tela de uma despesa') do
    visit "https://cuidando.vc/despesa/2022/2022.34.10.14.243.3013.33904600.90.46.0.2157"
    expect(page).to have_content('Acompanhe a despesa')
  end

  Dado('usuário está logado') do
    page.find('a', text: 'Entrar').click
    page.find('#modal-dialog')
    page.find("#login-form-username").fill_in(with: 'NoneTest')
    page.find("#login-form-password").fill_in(with: 'none1234')
    click_button('Entrar')
  end
  
  Quando('o usuário clicar no botão Acompanhar Despesa') do
    expect(page).to have_button('Acompanhar despesa')
    click_button('Acompanhar despesa')
  end
  
  Então('na página do perfil do usuário deve aparecer a despesa') do
    visit('https://cuidando.vc/pessoa/NoneTest')
    expect(page).to have_content('cuidandodomeubairro/despesa/2022.34.10.14.243.3013.33904600.90.46.0.2157')
  end
  
  Quando('o usuário clicar no botão Desacompanhar Despesa') do
    expect(page).to have_button('Deixar de acompanhar despesa')
    click_button('Deixar de acompanhar despesa')
  end
  
  Então('na página do perfil do usuário não deve aparecer Itens Acompanhados') do
    visit('https://cuidando.vc/pessoa/NoneTest')
    expect(page).to have_no_content('cuidandodomeubairro/despesa/2022.34.10.14.243.3013.33904600.90.46.0.2157')
  end