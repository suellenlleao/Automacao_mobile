#language:pt
#utf-8

    Funcionalidade: Validar a API de serviços através dos método POST, GET e PUT
        Eu como sistema responsáveç por realizar a chamada de serviços
        Quero verificar se o sistema de API está permitindo realizar a busca dos serviços
        Para buscar informação necessária para cada consulta

       @ip
        Cenário: Incluir novo produto através do método POST
            Dado que tenha acesso API service
            Quando realizar a validação através do método POST
            Então um novo produto será criado na API

        @ip2 
        Cenário: Obter lista de Autores através do método GET
            Dado que tenha acesso API service
            Quando Obter uma lista através do método GET
            E Realizar a alteração de um Autor através do metodo PUT com a informação obtida
			Então a atualização de um Autor será realizada 