require 'rspec'
require 'capybara'
require 'selenium/webdriver'
require 'capybara/rspec'
require_relative '../locators'
require_relative '../constants'
require_relative '../common_methods'

Dir[File.join(__dir__, '../pages', '*.rb')].each { |file| require file }

$search = SearchPage.new
$options = AdditionalOptions.new
$product = CartPage.new

Capybara.register_driver :selenium do |app|
  Selenium::WebDriver::Chrome::Service.driver_path = Config::DRIVER
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.app_host = Config::HOME_PAGE
