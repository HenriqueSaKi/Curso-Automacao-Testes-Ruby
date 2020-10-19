class AjaxPage < SitePrism::Page
    set_url '/buscaelementos/botoes'
    element :botao, '#teste' #Por padrão, procura elemento pelo id
    element :mensagem, '#div1' 

    def clicar_botao
        wait_until_botao_visible
        botao.click
    end
end