Feature: Search for TVs on Walmart web site

	Scenario: Search for TVs, bring up the product to the cart and check if the product is there

		Given I am at the Walmart web site
			When I search for "tv"
			And I select product on the page
			And I check if the product is showed
			And I select the product
			Then product is stored on the cart
			And I can check that the product is on the cart
