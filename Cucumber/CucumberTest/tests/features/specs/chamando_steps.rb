Dado('eu tenho {int} laranjas no estoque') do |valor1|
# Dado('eu tenho {float} laranjas no estoque') do |float|
    @laranjas = valor1 # Write code here that turns the phrase above into concrete actions
end

Quando('eu amasso {int} laranjas') do |amassei|
# Quando('eu amasso {float} laranjas') do |float|
    @total = @laranjas - amassei # Write code here that turns the phrase above into concrete actions
end

Então('eu verifico quantas laranjas sobraram no estoque') do
    expect(@total).to eq 8 # Write code here that turns the phrase above into concrete actions
end

Quando('revendo {int} laranjas') do |revendo|
# Quando('revendo {float} laranjas') do |float|
    steps %Q{
        Dado eu tenho 10 laranjas no estoque
    } #Reutiliza o mesmo passo sem utilizar contexto. Vantagem: Não é necessário utilizar o mesmo passo em todos os cenários
    @resultado = @laranjas - revendo# Write code here that turns the phrase above into concrete actions
end

Então('eu verifico com quantas laranjas eu fiquei') do
    expect(@resultado).to eq 8 # Write code here that turns the phrase above into concrete actions
end