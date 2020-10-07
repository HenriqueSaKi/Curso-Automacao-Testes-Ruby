print 'Digite um numero: '
numero = gets.to_i #to_i é um cast, ou seja, define que o valor recebido será um inteiro.

if numero >= 0
    puts 'Número positivo'
else 
    puts 'Número negativo'
end

unless numero == 2
    puts 'Não esperava esse número...'
else
    puts 'Sabia que iria digitar esse número'
end
