#language: pt

Funcionalidade: Trabalhando com chamandos outros passos

@step1
Cenário: Amasso laranjas
Dado eu tenho 10 laranjas no estoque
Quando eu amasso 2 laranjas
Então eu verifico quantas laranjas sobraram no estoque

@step2
Cenário: Revendo laranjas
Quando revendo 2 laranjas
Então eu verifico com quantas laranjas eu fiquei