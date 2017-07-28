require 'calabash-android/calabash_steps'

Dado(/^que esteja com aplicativo iniciado$/) do
wait_for_elements_exist(["* id:'btnCalcular'"], :timeout => 4)
end

Quando(/^eu digitar o "([^"]*)", "([^"]*)" e "([^"]*)" lados de um triangulo$/) do |lado1, lado2, lado3|

page(Triangulo).preencher_valor_triangulo(lado1, lado2, lado3)

end

Entao(/^o aplicativo apresentará qual o tipo "([^"]*)" de triangulo$/) do |mensagem|
page(Triangulo).clicar_btn_calcular
page(Triangulo).validar_btn_calcular

end

Quando(/^eu não digitar "([^"]*)","([^"]*)" e "([^"]*)" de um triangulo$/) do |lado1_vazio, lado2_vazio, lado3_vazio|

page(Triangulo).preencher_valor_triangulovzo(lado1_vazio,lado2_vazio,lado3_vazio)
#touch("* id:'txtLado1'")
#keyboard_enter_text(lado1_vazio)

#touch("* id:'txtLado2'")
#keyboard_enter_text(lado2_vazio)

#touch("* id:'txtLado3'")
#keyboard_enter_text(lado3_vazio)
#hide_soft_keyboard
end 


Entao(/^o aplicativo apresentará a "([^"]*)"$/) do |mensagem_vazia|
page(Triangulo).clicar_btn_calcular
page(Triangulo).validar_btn_calcular
end

Quando(/^eu clicar no ícone configurações$/) do
  #touch("* contentDescription:'More options'")
  page(Geral).clicar_objeto_settings 	
end

Entao(/^o sistema exibe a mensagem "([^"]*)"$/) do |args|
  #wait_for_elements_exist(["* text:'Settings'"], :timeout => 10)
  page(Geral).contem_objeto_settings
end