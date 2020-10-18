Quando('eu cadastro o usuário') do
    visit '/users/new'
    fill_in(id: 'user_name', with: 'Henrique')
    fill_in(id: 'user_lastname', with: 'Kisaki')
    fill_in(id: 'user_email', with: 'satoshikisaki@hotmail.com')
    find(:xpath, "//input[@type='submit']").click
    sleep(3)
end

Então('verifico se o usuário foi cadastrado.') do
    page.has_xpath?("//p[contains(text(), 'Usuário Criado com sucesso')]")
    sleep(2)
end

#Para rodar essa segunda parte da aplicação no mesmo teste, é necessário alterar o arquivo env.rb
#Da seguinte maneira:

#require 'capybara/dsl'
#require 'capybara/rspec/matchers'
#require 'capybara/rspec/matcher_proxies'
#
#World(Capybara:DSL)
#World(Capybara:RSpecMatchers)

Quando('edito um usuário') do
    find(:xpath, "//a[contains(text(), 'Editar')]").click
    fill_in(id: 'user_name', with: 'Henrique Satoshi')
    find(:xpath, "//input[@type='submit']").click
    sleep(2)
end

Então('verifico se o usuário foi editado.') do
    page.has_xpath?("//p[contains(text(), 'Seu Usuário foi Atualizado!')]")
    sleep(2)
end