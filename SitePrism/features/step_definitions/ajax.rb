Quando('eu clico no botão') do
    @ajax = AjaxPage.new
    @ajax.load

    @ajax.clicar_botao
end

Então('verifico se apareceu') do
    #@ajax.wait_until_mensagem_visible
    @ajax.has_mensagem?
    expect(@ajax.mensagem.text).to eql 'Você Clicou no Botão!'
end