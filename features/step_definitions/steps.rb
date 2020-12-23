Dado("que estou logado no site") do                                          
  visit ('http://demo.cs-cart.com/')
end                                                                          
                                                                             
Quando("digito o produto") do                                                
  element = page.find(:id,"search_input")
  page.driver.browser.mouse.double_click(element.native)
  fill_in('search_input', :with => 'batman')
  click_button('Pesquisar')
  sleep 2
end                                                                          
                                                                             
Quando("seleciono o produto") do                                             
  click_link('Batman: Arkham City (X360)')
end                                                                          
                                                                             
Então("o sistema adiciona no carrinho de compras") do                        
  click_button('Adicionar ao carrinho')
  sleep 10

end                                                                          
                                                                             
Então("repito o processo com outro produto") do                              
  element = page.find(:id,"search_input")
  page.driver.browser.mouse.double_click(element.native)
  fill_in('search_input', :with => 'PS3')
  click_button('Pesquisar')
  sleep 2
  click_link('F.E.A.R. 3 (PS3) MX')
  click_button('Adicionar ao carrinho')
  sleep 10
  page.has_content?('2 item(ns)')
end                                                                          