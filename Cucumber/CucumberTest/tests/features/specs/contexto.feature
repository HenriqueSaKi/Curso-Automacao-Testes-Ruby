#language: pt

Funcionalidade: Trabalhar com contexto.

Contexto: 
Dado que eu tenho 10 laranjas na bolsa.


Cenário: Comprar laranja.
Quando eu coloco 2 laranjas na bolsa
Então eu verifico se o total de laranjas na bolsa é 12.

Cenário: Vender laranja.
Quando eu tiro 2 laranjas da bolsa
Então eu verifico com quantas larajas eu fiquei na bolsa.