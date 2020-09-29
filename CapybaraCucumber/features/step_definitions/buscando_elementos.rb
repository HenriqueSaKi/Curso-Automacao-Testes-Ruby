Quando('acesso a url de botões') do
    visit '/buscaelementos/botoes'
end

Então('verifico se encontrei os elementos') do
    #Busca todos os elementos com o comando all
    page.all(:css, '.btn')
    #Busca um elemento mapeado
    find('#teste')
    #Busca pelo id
    find_by_id('teste')
    #busca um botao
    find_button(class: 'btn waves-light')
    #Busca o primeiro elemento que contenha o elemento mapeado 
    first('.btn')
    #Busca por algum link (No caso não existe mais na página. Irá retornar falso)
    find_link(href: 'https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA')
end