class Homeclaro < Calabash::ABase



	def validar_tela_inicial_carregada
		page(Geralclaro).validar_elementos('action_search')
		wait_for_elements_exist(["* id:'action_search'"], :timeout => 10)
	end

	def clicar_no_menu
		page(Geralclaro).validar_content_description('Navigate up')
		touch(query("* contentDescription:'Navigate up'"))
	end
    
    def clicar_em_cadastraSe
    	page(Geralclaro).validar_textos('Cadastre-se')
    	touch(query("* text:'Cadastre-se'"))
    end

    def pegar_nome_usuario
    	#query("android.widget.CheckedTextView", :text).first
    	query("* id:'menu_item'", :text).first
    end
    
    def aguardar_menu_inicial_carregar 
    wait_for_elements_exist(["* {text CONTAINS 'Início'}"], :timeout => 20) 
    end
end
    