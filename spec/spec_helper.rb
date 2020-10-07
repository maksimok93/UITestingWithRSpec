require 'rspec'
require 'capybara'
require 'selenium/webdriver'
require 'capybara/rspec'
require_relative '../pages/cart_page'
require_relative '../pages/search_page'
require_relative '../pages/pop_up_windows'
require_relative '../locators'
require_relative '../constants'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.app_host = 'https://rozetka.com.ua'
