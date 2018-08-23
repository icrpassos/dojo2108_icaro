#Sobe em memórias as Gems informadas
require 'rspec'
require 'page-object'
require 'data_magic'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'pry'

#Configurando o driver Capybara
Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

#Setando a configuração do driver padrão
Capybara.default_driver = :selenium

#timeout padrão na execução
Capybara.default_max_wait_time = 15	

#Maximizar a Tela ao Iniciar o Teste
Capybara.page.driver.browser.manage.window.maximize

