require 'calabash-android/calabash_steps'

Dado(/^que estou na página inicial do aplicativo$/) do
 # binding.pry
 page(Homeclaro).validar_tela_inicial_carregada
end

Quando(/^acessar a opção Cadastra\-se$/) do
  #binding.pry	
  page(Homeclaro).clicar_no_menu
  page(Homeclaro).clicar_em_cadastraSe
  page(Geralclaro).preencher_cpf(Faker::CPF.numeric)
  page(CadastroNovosClientes).clicar_botao_continuar
 

end

Quando(/^preencher os dados solicitados$/) do
#binding.pry	
	page(CadastroNovosClientes).realizar_cadastro_usuario
	page(CadastroNovosClientes).aguardar_elemento_meiopagamento
end

Então(/^o cadastro é realizado com sucesso$/) do
#binding.pry  
  #Botão voltar da página de pagamento
  page(Homeclaro).clicar_no_menu
  page(Homeclaro).validar_tela_inicial_carregada
  
  #Menu página inicial
  page(Homeclaro).clicar_no_menu
  page(Homeclaro).aguardar_menu_inicial_carregar 
  expect(page(Homeclaro).pegar_nome_usuario).to include(@nome).to_s
end



