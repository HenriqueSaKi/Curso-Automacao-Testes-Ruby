Quando('eu cadastro um usuário') do
    visit '/users/new'
    find('#user_name').send_keys('Henrique')
    find('#user_lastname').send_keys('Kisaki')
    find('#user_email').send_keys('satoshikisaki@hotmail.com')
    find(:xpath, "//input[@value='Criar']").click
    sleep(1)
end

Então('verifico a confirmação de cadastro.') do
    page.has_xpath?('//p[contains(text(), "Usuário Criado com sucesso")]')
end