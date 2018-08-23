#language: pt
#utf-8

@regressao
Funcionalidade: Lista de Empregados 
	Eu como usuario 
	Quero cadastrar um novo empregado
	Para aumentar a minha lista de empregados


Cenario: Cadastrar um novo empregado
	Dado que esteja no site
	Quando efetuar o login
	Entao adicionar um novo empregado

@editarcadastro
Cenario: Editar os dados de um empregado
	Dado que já tenha um cadastro
	Quando efetuar o login e entrar na lista
	Entao editar os dados de um empregado existente


