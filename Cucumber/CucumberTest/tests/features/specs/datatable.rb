Dado('que eu tenho umas laranjas') do |table|
# table is a Cucumber::MultilineArgument::DataTable
    @laranja = table.rows_hash['laranja'].to_i
end

Quando('eu corto {int} laranjas') do |valor1|
# Quando('eu corto {float} laranjas') do |float|
    @cortar = valor1
    @total = @laranja - @cortar
end

Então('eu verifico quantas laranjas sobraram inteiras') do
    expect(@total).to eq 8
end

Dado('que tenho umas laranjas') do |table|
# table is a Cucumber::MultilineArgument::DataTable
    table.hashes.each do |valor|
        @laranjas = valor['laranja'].to_i
    end
end

Quando('eu chupo {int} laranjas') do |valor2|
# Quando('eu chupo {float} laranjas') do |float|
     @chupei = valor2
     @resultado = @laranjas - @chupei
end

Então('eu verifico quantas laranjas sobraram.') do
    expect(@resultado).to eq 8
end