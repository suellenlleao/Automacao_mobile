#encoding: utf-8
#language: pt

Funcionalidade: Validar mensagens de campos obrigatórios na tela de cadastro e Realizar novo cadastro
	Eu como cliente do aplicativo app Claro
	Quero acessar no aplicativo a tela cadastro de novo usuario 
	Para verificar as mensagens de validação obrigatória e realizar o cadastro de usuario

    @teste_cadastro
    Cenário: Realizar o cadastro de um novo usuário 
    Dado que estou na página inicial do aplicativo
    Quando acessar a opção Cadastra-se
    E preencher os dados solicitados 
    Então o cadastro é realizado com sucesso 


    @teste_negativo_mesangens  
    Cenário:Verificar se o aplicativo claro video apresenta as mensagens de validação obrigatória
    Dado que eu acesse a tela de cadastro de novos clientes
    Quando os campos obrigatórios não estiverem preenchidos
    Então o sistema exibe as mensagens de validação obrigatória


