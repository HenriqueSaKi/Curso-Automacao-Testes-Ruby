Quando('eu clico no elemento da sessão.') do
    @pagina = Pagina.new
    @pagina.load

    @pagina.navbar.medium.click
end