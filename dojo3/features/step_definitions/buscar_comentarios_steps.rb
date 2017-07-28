Dado(/^que tenha acesso API service$/) do
  puts "Step1"

end

Quando(/^realizar um get$/) do
 @resposta =  HTTParty.get('http://jsonplaceholder.typicode.com/comments/')

end

Então(/^a informação sera obtida$/) do
#.code o item do site que foram passados na variável resposta vc pode chamar 
  expect(@resposta.code).to eq 200
end