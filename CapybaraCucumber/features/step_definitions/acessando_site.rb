Quando('acesso a url') do
    #Complementa o path, caso você queira acessar o site em outra parte dele.
    visit '/treinamento/home'
    sleep(5)
end

Entao('eu verifico se estou na página correta.') do
    #Verifica se está na página esperada.
    expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home', url: true)
    sleep(5)
end