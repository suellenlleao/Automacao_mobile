require 'calabash-android/calabash_steps'

Dado(/^que acesse o GitHub$/) do
  

end

Quando(/^entrar no projeto Spring Boot$/) do
#binding.pry
while element_does_not_exist("* text:'spring-boot'") do
	page(Geral).scrolls_para_baixo(3)
	sleep(1)
end
page(Geral).entrar_spring_boot
sleep(5)
#page(Geral).entrar_spring_boot
sleep(5)
page(SpringBoot).lista_nomes_sboot
page(SpringBoot).lista_comentarios


#binding.pry



     #@total_commit = (@qtd_commit['text'].split(" ").first.to_i)
     #puts @total_commit
end

#until == variavel

=begin
@nomes = query("* id:'repo_detail_username'")
    lista = []
  @nomes.each do |item|
     lista << item['text']
   end


@comentarios = query("* id:'repo_detail_title'")
    lista2 = []
  @comentarios.each do |item|
     lista2 << item['text']
   end
=end
#puts lista, lista2

=begin
  @total_commit = query("* class:'android.widget.AppCompatTextView'").first
    lista3 = []
  @total_commit.each do |item|
     lista3 << item['text'].split(" ").first.to_i
   end
\n
   puts @total_commit
=end
  
=begin
  @totalcommits = @lista['count'].to_i
   puts @totalcommits

@nomes = query("* id:'repo_detail_username'")
    lista = []
  @nomes.each do |item|
     lista << item['TextView']
   end
=end
#@nomes = query("* id:'repo_detail_username'")

     




Entao(/^o aplicativo exibe a quantidade de commits realizados na página$/) do
  @qtd_commit = query("AppCompatTextView {text CONTAINS 'opened'}").first
    
   @quantidade_commits = (@qtd_commit['text'].split(" ").first).to_i
 puts @quantidade_commits
end
