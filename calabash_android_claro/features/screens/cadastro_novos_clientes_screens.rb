class CadastroNovosClientes < Calabash::ABase

	def clicar_botao_continuar
		page(Geralclaro).validar_elementos('btContinue')
		touch(query("* id:'btContinue'"))
	end

	def preencher_email(email)
		page(Geralclaro).validar_elementos('edit_email')
		touch(query("* id:'edit_email'"))
		keyboard_enter_text(email)
		
		page(Geralclaro).validar_elementos('edit_email_repeat')
		touch(query("* id:'edit_email_repeat'"))
		keyboard_enter_text(email)
		hide_soft_keyboard
	end

		def preencher_senha(senha)
		page(Geralclaro).validar_elementos('edit_password')
		touch(query("* id:'edit_password'"))
		keyboard_enter_text(senha)
		
		page(Geralclaro).validar_elementos('edit_password_repeat')
		touch(query("* id:'edit_password_repeat'"))
		keyboard_enter_text(senha)
		hide_soft_keyboard
	end

	def preencher_nome(nome)
		page(Geralclaro).validar_elementos('edit_name')
		touch(query("* id:'edit_name'"))
		keyboard_enter_text(nome)
		hide_soft_keyboard
	end

	def preencher_sobrenome(sobrenome)
		page(Geralclaro).validar_elementos('edit_surname')
		touch(query("* id:'edit_surname'"))
		keyboard_enter_text(sobrenome)
		hide_soft_keyboard
	end

	def clicar_em_aceito_termos
		page(Geralclaro).validar_elementos('checkbox_terms')
		touch(query("* id:'checkbox_terms'"))
	end

	def clicar_botao_seguinte
		page(Geralclaro).validar_elementos('btn_continue')
		touch(query("* id:'btn_continue'"))
	end

	def realizar_cadastro_usuario
    	page(CadastroNovosClientes).preencher_email(Faker::Internet.email)
		page(CadastroNovosClientes).preencher_senha ENV['SENHA']
		@nome = Faker::Name.first_name
		page(CadastroNovosClientes).preencher_nome(@nome)
		@sobrenome = Faker::Name.last_name
		page(CadastroNovosClientes).preencher_sobrenome(@sobrenome)
		page(CadastroNovosClientes).clicar_em_aceito_termos
		page(CadastroNovosClientes).clicar_botao_seguinte
		sleep(3)
    end

    def aguardar_elemento_meiopagamento
    	wait_for_elements_exist(["* {text CONTAINS 'Selecione um meio de pagamento'}"], :timeout => 20)
    end	
end