print 'Digite 1 ou 2: '
numero = gets.to_i

case numero 
when 1
    puts 'Você digitou 1'
when 2
    puts 'Você digitou 2'
else
    puts 'Este número não consta no intervalo determinado'
end
