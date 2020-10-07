print 'Digite um numero: '
numero = gets.to_i

if numero == 0 || numero > 0
    puts 'Número positivo'
else
    puts 'Número negativo'
end

if numero > 2 && numero != 0
    puts 'Válido'
else
    puts 'Inválido'
end

if !(numero == 10)
    puts 'Número diferente de 10'
else
    puts 'Número igual a 10'
end
