require 'capybara/dsl'
require_relative '../locators'

class Authorization
  include Capybara::DSL

  def initialize(email, password)
    @email = email
    @password = password
  end

  def auth_as_registered_user
    find(:css, AuthLocators::EMAIL).set(@email)
    find(:css, AuthLocators::PASSWORD).set(@password)
    click_button('Войти')
  end

  def choose_remember_me
    check(AuthLocators::REMEMBER_ME)
  end

  def remind_password
    click_button('Напомнить пароль')
  end
end

class UserActions
  include Capybara::DSL

  def initialize(surname = nil, name = nil, email = nil, password = nil)
    @surname = surname
    @name = name
    @email = email
    @password = password
  end

  def register_new_user
    find(:css, RegisterUserLocators::SURNAME).set(@surname)
    find(:css, RegisterUserLocators::NAME).set(@name)
    find(:css, RegisterUserLocators::USERNAME).set(@email)
    find(:css, RegisterUserLocators::PASSWORD).set(@password)
    click_button('Зарегистрироваться')
  end

  def delete_user
    find(:xpath, CabinetLocators::DELETE_ACCOUNT).click
    find(:css, CabinetLocators::AGREE).click
    find(:css, CabinetLocators::REASON_FIELD).set('test')
    find(:xpath, CabinetLocators::CONFIRM_DELETE).click
  end
end
