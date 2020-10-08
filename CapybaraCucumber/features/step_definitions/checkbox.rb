Quando('eu clicar nos checkboxs') do
    visit '/buscaelementos/radioecheckbox'
    find(:xpath, "//label[@for='red']").click #Para checkbox ou radiobox
    check('purple', allow_label_click: true) #só funcionará com checkbox
    choose('yellow', allow_label_click: true) #para radiobox
    find(:xpath, "//label[@for='black']").click
    sleep(3)
end