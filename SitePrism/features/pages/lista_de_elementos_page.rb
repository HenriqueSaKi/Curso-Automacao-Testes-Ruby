class MapeandoListas < SitePrism::Page
    set_url '/buscaelementos/table'

    elements :lista, 'tr > td' #elements requisita uma lista
end