class Geral < Calabash::ABase

def validar_texto(*args)
  args.each do |text|
    wait_for_elements_exist(["* text:'#{text}'"], :timeout => 20)
  end
end
	end

	def validar_elemento(*args)
  args.each do |elements|
    wait_for_elements_exist(["* id:'#{elements}'"], :timeout => 20)
  end
end

	def contem_objeto_settings(*args)
  args.each do |elements|
    wait_for_elements_exist(["* {text CONTAINS '#{params}'}"], :timeout => 20)
  end
end

	def validar_elemento_description(*args)
	args.each do |elements|
	wait_for_elements_exist(["* contentDescription:'#{elements}'"], :timeout => 20)
	end
	end

	def clicar_objeto_settings(*args)
    page(Geral).validar_elemento_description('More options')
   	touch("* contentDescription:'More options'")
    end

