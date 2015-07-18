Given(/^I am at the Walmart web site$/) do
  visit 'http://walmart.com.br'
end

When(/^I search for "([^"]*)"$/) do |search_term|
  fill_in 'suggestion-search', :with => search_term
  click_on 'Procurar'
end

When(/^I select product on the page$/) do
  page.all(".loading")[0].click
end

When(/^I check if the product is showed$/) do
  expect(page).to have_content 'TVs'
end

When(/^I select the product$/) do
  click_on 'Adicionar ao carrinho'
end

Then(/^product is stored on the cart$/) do
  click_on 'Continuar'
end

Then(/^I can check that the product is on the cart$/) do
  page.find(:link,"carrinho").click
end
