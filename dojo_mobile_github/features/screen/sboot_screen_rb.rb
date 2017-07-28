class SpringBoot < Calabash::ABase

	def lista_nomes_sboot
    	@nomes = query("* id:'repo_detail_username'")
    	lista = []
  		@nomes.each do |item|
     	lista << item['text']
     	puts lista
   end
   	 end	

     def lista_comentarios
     @comentarios = query("* id:'repo_detail_title'")
     lista2 = []
     @comentarios.each do |item|
     lista2 << item['text']
     puts lista2
   	 end 
end
	end
