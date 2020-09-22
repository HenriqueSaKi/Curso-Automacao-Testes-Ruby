Dado('que eu tenho {int} laranjas na bolsa.') do |valor1|
# Dado('que eu tenho {float} laranjas na bolsa.') do |float|
    @laranjas = valor1 # Write code here that turns the phrase above into concrete actions
end

Quando('eu coloco {int} laranjas na bolsa') do |adicionar|
# Quando('eu coloco {float} laranjas na bolsa') do |float|
    @coloco = adicionar # Write code here that turns the phrase above into concrete actions
    @resultado = @coloco + @laranjas
end

Então('eu verifico se o total de laranjas na bolsa é {int}.') do |total|
# Então('eu verifico se o total de laranjas na bolsa é {float}.') do |float|
    expect(@resultado).to eq total # Write code here that turns the phrase above into concrete actions
end

Quando('eu tiro {int} laranjas da bolsa') do |retirar|
# Quando('eu tiro {float} laranjas da bolsa') do |float|
    @tira = retirar  # Write code here that turns the phrase above into concrete actions
    @resultado = @laranjas - @tira
end

Então('eu verifico com quantas larajas eu fiquei na bolsa.') do
    expect(@resultado).to eq 8 # Write code here that turns the phrase above into concrete actions
end