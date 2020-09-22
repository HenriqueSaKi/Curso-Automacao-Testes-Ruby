Quando('eu somo {int}+{int}') do |valor1, valor2|
# Quando('eu somo {int}+{float}') do |int, float|
# Quando('eu somo {float}+{int}') do |float, int|
# Quando('eu somo {float}+{float}') do |float, float2|
    @soma = valor1 + valor2 # Write code here that turns the phrase above into concrete actions
end

Então('o resultado tem que ser {int}') do |resultado|
# Então('o resultado tem que ser {float}') do |float|
    expect(@soma).to eq resultado # Write code here that turns the phrase above into concrete actions
end