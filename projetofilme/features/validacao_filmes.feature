#language:pt
#utf-8

    Funcionalidade: Buscar comentários - API Filmes
        Eu como sistema intermediário
        Quero fazer a requisição da leitura de todos os filmes 
        Para checar quais filmes estão cadastrados

        @buscar_filmes
        Cenário: Buscar comentários - API Filmes
	        Dado que obtenha a lista de filmes
	        Então valido o codigo da resposta 200
	        E exibo a lista de filmes
         
         @buscar_planetas
	     Cenário: Validar planeta não encontrado
	        Dado que obtenha a lista de planetas
	        Então armazeno o valor total de planetas
	        E efetuo uma busca de um valor maior que a quantidade total 
            Então mensagem "Not found" é exibida 
            E código 404 é retornado
	       
         @buscar_diretor
	     Cenário: Buscar todos os filmes que sejam do diretor George Lucas e Rick McCallum
	     Dado que obtenha a lista de filmes
	     Então valido o codigo da resposta 200
	     E exibo toda a lista de títulos dos filmes dos diretores "George Lucas" e "RicK McCallum" 
   