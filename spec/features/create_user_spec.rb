require_relative '../spec_helper'

RSpec.describe 'Create new user', type: :feature do
  context 'When on Main page' do
    it 'Verifies creation of a new account' do
      visit('/')
      click_link('войдите в личный кабинет')
      click_link('Зарегистрироваться')
      users_data = eval(File.open('tests_data/users_data', 'r:UTF-8', &:read))
      @user = UserActions.new(users_data[:surname], users_data[:name], users_data[:email], users_data[:password])
      @user.register_new_user
      expect(page).to have_xpath(AuthLocators::AUTH_USERNAME)
    end

    after(:each) do
      visit('https://rozetka.com.ua/cabinet/personal-information/')
      @user.delete_user
      # find(:xpath, CabinetLocators::DELETE_ACCOUNT).click
      # find(:css, CabinetLocators::AGREE).click
      # find(:css, CabinetLocators::REASON_FIELD).set('test')
      # find(:xpath, CabinetLocators::CONFIRM_DELETE).click
    end
  end
end
