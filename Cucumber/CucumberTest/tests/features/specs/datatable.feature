#language: pt

@funcionalidade
Funcionalidade: Trabalhar com datatable.

@cortar
Cenário: Cortar laranjas
Dado que eu tenho umas laranjas
|laranja|10|
Quando eu corto 2 laranjas
Então eu verifico quantas laranjas sobraram inteiras

@chupar
Cenário: Chupar laranjas
Dado que tenho umas laranjas
|laranja|
|10|
Quando eu chupo 2 laranjas
Então eu verifico quantas laranjas sobraram.