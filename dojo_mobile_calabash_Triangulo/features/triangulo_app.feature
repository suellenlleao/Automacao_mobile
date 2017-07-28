#language: pt
#utf-8

	Funcionalidade: Calcular Triangulo
	Eu como cliente do aplicativo TrianguloApp
	Quero calcular os lados de um triangulo
	Para saber qual o tipo do triangulo

@calcular_lados
	Esquema do Cenario: Calcular o tipo de triangulo
	Dado que esteja com aplicativo iniciado
	Quando eu digitar o "<lado1>", "<lado2>" e "<lado3>" lados de um triangulo
	Entao o aplicativo apresentará qual o tipo <mensagem> de triangulo

	Exemplos:

	| lado1 | lado2 | lado3 | mensagem                     |
	|   3   |    3  |   3   | "O triângulo é Equilátero"   |   
	|   1   |    5  |   6   | "O triângulo é Escaleno"     |
	|   1   |    1  |   2   | "O triângulo é Isósceles"    |

@verificar_vazio
    Esquema do Cenario:: Verificar a mensagem quando os lados do triangulo não são preenchido
	Dado que esteja com aplicativo iniciado
	Quando eu não digitar "<lado1_vazio>","<lado2_vazio>" e "<lado3_vazio>" de um triangulo
	Entao o aplicativo apresentará a "<mensagem_vazia>"
     
    Exemplos:
    | lado1_vazio | lado2_vazio | lado3_vazio | mensagem_vazia             |
	|             |             |             | Preencha todos os campos   |

@verificar_settings
    Cenário: Clicar no ícone de configuração
    Dado que esteja com aplicativo iniciado
    Quando eu clicar no ícone configurações
    Entao o sistema exibe a mensagem " " 



      
	



