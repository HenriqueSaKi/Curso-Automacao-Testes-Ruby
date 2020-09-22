Dado('eu tenha {int} laranjas.') do |valor1|
# Dado('eu tenha {float} laranjas.') do |float|
    @laranjas = valor1 # Write code here that turns the phrase above into concrete actions
end

Quando('eu como {int} laranjas.') do |valor2|
# Quando('eu como {float} laranjas.') do |float|
    @comer = valor2 # Write code here that turns the phrase above into concrete actions
    @resultado = @laranjas - @comer
end

Então("eu vejo quantas laranjas sobraram.") do
    expect(@resultado).to eq 8
end

Quando('eu compro {int} laranjas.') do |valor3|
# Quando('eu compro {float} laranjas.') do |float|
    @comprar = valor3 # Write code here that turns the phrase above into concrete actions
    @compratotal = @laranjas + @comprar
end

Então('eu vejo quantas larajas eu tenho.') do
    expect(@compratotal).to eq 15 # Write code here that turns the phrase above into concrete actions
end