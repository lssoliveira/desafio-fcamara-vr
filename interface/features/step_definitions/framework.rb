#encoding: utf-8
Dado("que acesso a página principal do VR") do
  @home.load
end

Quando("navego até o botão Para Você") do 
  @home.para_voce.click
end                                                                           
                                                                              
Então("Será possível acessar a opção Onde Usar Meu Cartão VR") do
  @para_voce.aceitar_cookies.click
  @para_voce.onde_usar.click                 
end                                                                           
                                                                              
E("visualizar os locais que aceitam VR") do
  sleep 1                                
  @para_voce.map.visible?
end

# Steps o mais 'clean' possível com o auxilio do page objetcs.

# Os testes foram realizados com Cucumber + Ruby tranto para a api quando para o web.
# Me sinti mais confiante fazendo os dois em ruby para conseguir demonstrar um pouco de minhas capacidades.