Quando('clico em botoes') do
    visit '/'
    click_on('Começar Automação Web') #click_link_or_button são identicos
    visit '/buscaelementos/botoes'
    click_button(class: 'btn waves-light')
    sleep(2)
    find('a[class="waves-light btn"]').click
    find('a[class="waves-light btn"]').double_click
    find('a[class="waves-light btn"]').right_click
    sleep(5)

    visit '/'
    click_link 'Github'
    sleep(5)
end