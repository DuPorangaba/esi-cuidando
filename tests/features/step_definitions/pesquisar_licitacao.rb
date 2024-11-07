Quando('o usuário clica no link Pesquisa licitação') do
    click_link('Pesquise licitações')
    
  end
  
  Então('abre uma nova janela para a paǵina {string}') do |string|
    new_window = window_opened_by { click_link('Pesquise licitações') }
    within_window new_window do
        expect(current_url).to match(string)
    end
  end