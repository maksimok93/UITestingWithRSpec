require_relative '../spec_helper'

RSpec.describe 'Create new user', type: :feature do
  include CommonMethods
  context 'When a new account is creating' do
    before(:each) do
      visit('/')
      find(:xpath, CabinetLocators::ENTER).click
      click_link('Зарегистрироваться')
    end

    it 'Verifies creation of a new account' do
      create_new_account
      expect(page).to have_xpath(AuthLocators::AUTH_USERNAME)
    end

    after(:each) do
      visit(Config::PERSONAL_INFO)
      user = UserActions.new
      user.delete_user
    end
  end

  context 'When account already created' do
    before(:each) do
      visit('/')
      find(:xpath, CabinetLocators::ENTER).click
      find(:xpath, RegisterUserLocators::GO_TO_REGISTER).click
      create_new_account
      find(:xpath, CabinetLocators::EXIT).click
    end

    it 'Verifies that account already exists' do
      find(:xpath, CabinetLocators::ENTER).click
      find(:xpath, RegisterUserLocators::GO_TO_REGISTER).click
      create_new_account
      expect(page).to have_content(Alerts::USER_EXISTS)
    end

    after(:each) do
      visit('/')
      find(:xpath, CabinetLocators::ENTER).click
      authorize_as_user
      sleep 2
      visit(Config::PERSONAL_INFO)
      user = UserActions.new
      user.delete_user
    end
  end
end
