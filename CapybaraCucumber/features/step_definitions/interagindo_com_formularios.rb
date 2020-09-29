Quando('eu faço cadastro') do
    visit '/users/new'
    fill_in(id: 'user_name', with: 'Henrique')
    find('#user_lastname').set('Kisaki')
    find('#user_email').send_keys('satoshikisaki@hotmail.com')
    fill_in(id: 'user_address', with: 'Anyaddress, 100')
    find('#user_university').set('Fatec Santo André')
    find('#user_profile').send_keys('Aux. Técnico')
    fill_in(id: 'user_gender', with: 'Masculino')
    find('#user_age').set('21')
    find('div[class="actions btn waves-effect green"]').click
end

Então('verifico se fui cadastrado') do
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'
end