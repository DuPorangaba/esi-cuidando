Dado('que o usuário acessa o modal de recuperar senha') do
    visit 'https://cuidando.vc/2022/1'
    page.find('a', text: 'Entrar').click
    page.find('#modal-dialog')
    page.find('a', text: 'Esqueceu a senha?').click
end

Quando('o usuário preencher as informações de recuperação') do
    page.find("#login-form-username").fill_in(with: 'NoneTest')
    page.find("#login-form-email").fill_in(with: 'none20840@gmail.com')
    click_button('Solicitar código')
    sleep 5
end

Então('deve receber um feedback positivo de recuperação') do
    expect(page).not_to have_text('E-mail errado.')
end
