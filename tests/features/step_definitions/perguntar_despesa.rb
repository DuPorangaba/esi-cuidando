Dado('que o usuário consiga acessar o modal O que deseja perguntar') do
    visit "https://cuidando.vc/despesa/2022/2022.34.10.14.243.3013.33904600.90.46.0.2157"
    expect(page).to have_button('Quero perguntar')
    click_button('Quero perguntar')
    page.find('#modal-dialog')
  end
  
  Quando('o usuário escolher o órgão como {string}') do |string|
    page.find('.modal-body').find('button.bg-transparent').click
    page.find("li[data-key='#{string}']",  visible: false).click
    
  end

  Quando('perguntar {string}') do |string|
    page.find("#new-pergunta-textarea").set(string)
  end
  
  Quando('pressionar o botão {string}') do |string|
    click_button(string)
  end
  
  Então('deve exibir uma mensagem indicando sucesso ou erro') do
    expect(page.find('#toast-bottom-right:nth-child(2)').text) == "Pergunta enviada || Erro ao tentar enviar pergunta"
  end
  
  Então('o botão "Enviar" está desativado') do
    page.find("button[disabled='disabled']")
  end

  