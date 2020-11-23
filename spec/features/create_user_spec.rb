require_relative '../spec_helper'

RSpec.describe 'Create new user', type: :feature do
  include CommonMethods
  context 'When on Main page' do
    before(:each) do
      visit('/')
      click_link('войдите в личный кабинет')
      click_link('Зарегистрироваться')
    end

    it 'Verifies creation of a new account' do
      create_new_account
      expect(page).to have_xpath(AuthLocators::AUTH_USERNAME)
    end

    after(:each) do
      visit('https://rozetka.com.ua/cabinet/personal-information/')
      del = UserActions.new
      del.delete_user
    end
  end
end
