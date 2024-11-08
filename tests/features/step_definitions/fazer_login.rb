Dado('que o usuário acessa a tela de login') do
    visit 'https://cuidando.vc/2022/1'
end

Quando('o usuário preencher as informações corretas de login') do
    page.find('a', text: 'Entrar').click
    page.find('#modal-dialog')
    page.find("#login-form-username").fill_in(with: 'NoneTest')
    page.find("#login-form-password").fill_in(with: 'none1234')
    click_button('Entrar')
    sleep 5
end

Então('deve aparecer como usuário logado') do
    visit 'https://cuidando.vc/pessoa/NoneTest'
    expect(page).to have_button('Editar')
end
