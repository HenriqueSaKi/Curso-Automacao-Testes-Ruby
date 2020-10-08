Quando('eu seleciono qualquer coisa dos Selects') do
    visit '/buscaelementos/dropdowneselect'
    select 'Chrome', from: 'dropdown'
    sleep(3)
end

Então('preencho o autocomplete.') do
    visit '/widgets/autocomplete'
    find('#autocomplete-input').set 'Rio de Janeiro' #Irá preencher o lugar com 'Rio de Janeiro'
    find('ul[id^="autocomplete-options-"]').click #começa com essas info no id
end