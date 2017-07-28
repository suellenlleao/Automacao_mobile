#language: pt
#utf-8

	Funcionalidade: Repositório GitHub Java Pop
	Eu como cliente do aplicativo GitHub Java Pop
	Quero acessar o Projeto "Spring boot"
	Para saber verificar a quantidade de pull requests realizados 

    @quantidade_commits
    Cenario: Verificar a quantidade de commits realizados na página Spring Boot
	Dado que acesse o GitHub
	Quando entrar no projeto Spring Boot
	Entao o aplicativo exibe a quantidade de commits realizados na página
	
	# touch("*text:'nome_prj'")