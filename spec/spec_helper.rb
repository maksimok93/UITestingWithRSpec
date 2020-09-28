require 'capybara'
require 'selenium/webdriver'
require 'capybara/rspec'
require_relative '../pop_up_windows'
require_relative '../locators'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.app_host = 'https://rozetka.com.ua'
