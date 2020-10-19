class MapeandoElementoPage < SitePrism::Page
    set_url '/users/new'

    element :nome, '#user_name' #mapeando pela classe
    
    def preencher
        nome.set 'Henrique'
    end


end