Dado("acessei a pagina do sistema alert") do

   visit 'https://automacaocombatista.herokuapp.com/mudancadefoco/alert'
   
  # visit 'Https://eccunha1:Stefanini@01@automacaocombatista.herokuapp.com/mudancadefoco/alert'

  end
  
  Quando("clico no botao") do
    click_button 'Clique para JS Confirm'
  end
  
  Entao("o sistema apresenta a mensagem e cancelo") do
    page.dismiss_confirm
    expect(page).to have_content 'Você clicou: Cancel'
   

  end
  