require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec/matchers'
require 'capybara/dsl'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require 'rspec/expectations'
require_relative 'mapa_de_elementos'
require 'roo'

World(PageObjects)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'http://localhost:3434/cars-app'
  config.default_max_wait_time = 5
end
