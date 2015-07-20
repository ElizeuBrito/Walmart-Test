Given(/^I request Correio's API with correct CEP$/) do
    visit 'http://cep.correiocontrol.com.br/13050120.json'
	
	Message = "Correct CEP"
	
	puts Message
end

Given(/^I can check the following fields: bairro, logradouro, cep, uf and localidade$/) do
  expect(page).to have_content 'bairro'
  expect(page).to have_content 'logradouro'
  expect(page).to have_content 'cep'
  expect(page).to have_content 'uf'
  expect(page).to have_content 'localidade'
end

When(/^I request Correio's API with incorrect CEP$/) do
  visit 'http://cep.correiocontrol.com.br/00000000.json'
  
  Message = "Incorrect CEP"
  
  puts Message
end

Then(/^I can check the following: Erro$/) do
  expect(page).to have_content 'erro'
end
