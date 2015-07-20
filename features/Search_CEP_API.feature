Feature: Get correct and incorrect CEP from Correio's API

	Scenario: Use Correio's API to GET CEPs

		Given I request Correio's API with correct CEP
		And I can check the following fields: bairro, logradouro, cep, uf and localidade
		When I request Correio's API with incorrect CEP
		Then I can check the following: Erro
