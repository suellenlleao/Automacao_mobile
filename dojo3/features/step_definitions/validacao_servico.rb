
Quando(/^realizar a validação através do método POST$/) do
 puts "Step1"
end


Então(/^um novo produto será criado na API$/) do
   puts "Step2"
   @httppost = HTTParty.post('http://fakerestapi.azurewebsites.net/api/books/',
 :body => { 
    Title: "Livro Dom Casmurro",
    Description: "teste@inmetrics.com.br",
    PageCount: 256,
    Excerpt: "Sumario Resumido",
    PublishDate: "2017-06-15T13:00:00"
	}.to_json,
	:headers => {'Content-Type' => 'application/json'}
    )
   	puts @httppost.code
   	expect(@httppost.code).to eq 200


end

Quando(/^Obter uma lista através do método GET$/) do
  puts "Step 3"
  @httplista = HTTParty.get('http://fakerestapi.azurewebsites.net/api/Authors/')
    lista = []
  @httplista.each do |item|
     lista << item['ID']
   end
  
  puts @httplista
end

Quando(/^Realizar a alteração de um Autor através do metodo PUT com a informação obtida$/) do
  puts "Step4"

   @index = rand(1..200)
   @put = HTTParty.put("http://fakerestapi.azurewebsites.net/api/Authors/#{@index}",
 :body => { 
    FirstName: "Joao"
	}.to_json,
	:headers => {'Content-Type' => 'application/json'}
    )
   	puts @put
end

Então(/^a atualização de um Autor será realizada$/) do
  puts "Step6"
 #Validaçao
  expect(@put.code).to eq 200

end