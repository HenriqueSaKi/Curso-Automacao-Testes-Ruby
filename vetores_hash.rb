vetor = [] #declara um array
vetor.push(1,2,3,4,5,6) #Adiciona os valores ao array
puts "#{vetor.length}" #retorna a quantidade de valores no array, no caso, 6

#imprime todas as variáveis do array
vetor.each do |i|
    puts i
end

hash = {"a" => "1", "b" => "2"}
puts hash["a"]
puts hash["b"]


hashes = {c: "123", d: "234"}
puts hashes[:c]
puts hashes[:d]