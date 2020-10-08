Quando('eu clicar na segunda opcao do dropdown') do
    visit '/buscaelementos/dropdowneselect'
    #find(:xpath, '//a[@class="btn dropdown-button"]').click 
    find('.btn.dropdown-button').click # '.' busca pela classe
    #find(:xpath, '//ul[@id="dropdown"]//li[3]//a[@id="dropdown3"]').click 
    find('#dropdown3').click # '#' busca pelo id
end

Então('verifico se a mensagem dizendo que eu cliquei está visível.') do
    page.has_text?('Você Clicou no Dropdown Sent!')
end