class Geral < Calabash::ABase

=begin
def scroll_para_baixo(quantity)
  quantity.times do
    
    #perform_action('drag', 70, 10, 80, 0, 3)
    #performAction('drag', 88, 80, 90, 90, 5)
  end
end
=end
def scrolls_para_baixo(quantity)
  quantity.times do
    perform_action('drag', 50, 50, 60, 40, 20)
  end
end

 def entrar_spring_boot
   page(Geral).validar_elemento('spring-boot')
   touch("* text:'spring-boot'")
  end 

  def validar_elemento(*args)
  	  args.each do |elements|
    wait_for_elements_exist(["* text:'#{elements}'"], :timeout => 20)
  end
  end
end
  