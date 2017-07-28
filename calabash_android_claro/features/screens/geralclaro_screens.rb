class Geralclaro < Calabash::ABase

	def validar_textos(*args)
	 	args.each do |text|
	    	wait_for_elements_exist(["* text:'#{text}'"], :timeout => 20)
		end
	end		

	def validar_elementos(*args)
		args.each do |elements|
			wait_for_elements_exist(["* id:'#{elements}'"], :timeout => 10)
		end
	end

	def validar_content_description(*args)
	 	args.each do |elements|
			wait_for_elements_exist(["* contentDescription:'#{elements}'"], :timeout => 4)
		end
    end

    def preencher_cpf(cpf)
    	validar_elementos('etCpf')
        touch(query("* id:'etCpf'"))
        keyboard_enter_text(cpf)
    end
end
