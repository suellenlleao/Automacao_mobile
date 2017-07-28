Dado(/^que obtenha a lista de filmes$/) do
  @resposta_filmes = HTTParty.get('http://swapi.co/api/films/')
end

	
	Então(/^valido o codigo da resposta (\d+)$/) do |codigo_resposta|
  
  expect(@resposta_filmes.code).to eq 200
  puts "Codigo validado com sucesso"

end

Então(/^exibo a lista de filmes$/) do
    @resposta_filmes['results'].each do |item|
    #campo que você quer utilizar
    puts item['title']
  end
end

#rand(1..20)

Dado(/^que obtenha a lista de planetas$/) do
    @resposta_planetas = HTTParty.get('http://swapi.co/api/planets/')
end

#Fiz a contagem do total de planetas armazenados na variaval total_planetas
Então(/^armazeno o valor total de planetas$/) do
   @total_planetas = @resposta_planetas['count']
end

#Fiz o count do planeta + 1
Então(/^efetuo uma busca de um valor maior que a quantidade total$/) do
    @resposta_planetas =  HTTParty.get("http://swapi.co/api/planets/#{@total_planetas + 1}")
end

#Pegue a resposta do detalhe e comprei com a mensagem para fazer a validaçao
Então(/^mensagem "([^"]*)" é exibida$/) do |not_found|
	expect(@resposta_planetas['detail']).to eq "Not found"
	puts "A mensagem Not found foi validada com sucesso"
	
end

Então(/^código (\d+) é retornado$/) do |arg1|
  expect(@resposta_planetas.code).to eq 404
  puts "A mensagem 404 foi validada com sucesso" 
end


#Exercicio 3

Então(/^exibo toda a lista de títulos dos filmes dos diretores "([^"]*)" e "([^"]*)"$/) do |diretor, produtor|
  @resposta_filmes['results'].each do |resultado|
  #if resultado['director'] 
  puts resultado['title'] if resultado['director'] == diretor && resultado['producer'].include?(produtor) 

  	end
end


