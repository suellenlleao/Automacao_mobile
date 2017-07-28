class Triangulo < Calabash::ABase

	def clicar_btn_calcular
		page(Geral).validar_elemento('btnCalcular')
		touch(query("* id:'btnCalcular'"))
		
	end

def clicar_lado1(lado1)
		page(Geral).validar_elemento('txtLado1')
		touch(query("* id:'txtLado1'"))
		keyboard_enter_text(lado1)
    end      

def clicar_lado2(lado2)
		page(Geral).validar_elemento('txtLado2')
		touch(query("* id:'txtLado2'"))
		keyboard_enter_text(lado2)
        
end

def clicar_lado3(lado3)
		page(Geral).validar_elemento('txtLado3')
		touch(query("* id:'txtLado3'"))
		keyboard_enter_text(lado3)
        hide_soft_keyboard 
end

def preencher_valor_triangulo(lado1, lado2, lado3)
	clicar_lado1(lado1)
	clicar_lado2(lado2)
	clicar_lado3(lado3)

end	

def clicar_lado1(lado1_vazio)
		page(Geral).validar_elemento('txtLado1')
		touch(query("* id:'txtLado1'"))
		keyboard_enter_text(lado1_vazio)
    end      

def clicar_lado2(lado2_vazio)
		page(Geral).validar_elemento('txtLado2')
		touch(query("* id:'txtLado2'"))
		keyboard_enter_text(lado2_vazio)
        
end

def clicar_lado3(lado3_vazio)
		page(Geral).validar_elemento('txtLado3')
		touch(query("* id:'txtLado3'"))
		keyboard_enter_text(lado3_vazio)
        hide_soft_keyboard 
end

def preencher_valor_triangulovzo(lado1_vazio, lado2_vazio, lado3_vazio)
	clicar_lado1(lado1_vazio)
	clicar_lado2(lado2_vazio)
	clicar_lado3(lado3_vazio)

end	

def validar_btn_calcular(*args)
    args.each do |elements|
    pagewait_for_elements_exist(["* id:'#{btnCalcular}'"], :timeout => 4)
 end
 	end
 		end
 		