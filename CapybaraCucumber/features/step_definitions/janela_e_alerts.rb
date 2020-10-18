Quando('eu entro na janela e verifico a mensagem') do
    visit '/mudancadefoco/janela'

    #muda de foco para a janela
    janela = window_opened_by do
        find(:xpath, "//a[contains(text(), 'Clique aqui')]").click
    end
    
    within_window janela do
        #Verifica se a página atual é a página esperada
        expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'

        #Verifica se existe a mensagem na página atual
        page.has_xpath?("//h5[contains(text(), 'Você Abriu uma nova janela!!')]")
    end
end

Quando('eu entro no alert e verifico e faço a ação.') do
    visit '/mudancadefoco/alert'
    find(:xpath, "//button[contains(text(), 'Clique para JS Alert')]").click
    page.accept_alert
    page.has_xpath?("//p[contains(text(), 'Você clicou no alerta com sucesso!!')]")

    find(:xpath, "//button[contains(text(), 'Clique para JS Confirm')]").click
    page.dismiss_confirm
    page.has_xpath?("//p[contains(text(), 'Você clicou: Cancel')]")

    find(:xpath, "//button[contains(text(), 'Clique para JS Prompt')]").click
    page.accept_prompt(with: 'Henrique Kisaki')
    page.has_xpath?("//p[contains(text(), 'Você digitou: Henrique Kisaki')]")

    find(:xpath, "//button[contains(text(), 'Clique para JS Prompt')]").click
    page.dismiss_prompt
    page.has_xpath?("//p[contains(text(), 'Você digitou: null')]")
end