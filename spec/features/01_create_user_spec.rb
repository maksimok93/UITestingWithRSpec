require_relative '../spec_helper'

feature 'Ruby: RSpec: practical task_2', type: :feature do
  describe 'When on Main Page' do
    it 'Verifies creation of a new account' do
      skip('Skip 01_user_spec')

      visit('/')
      click_link('войдите в личный кабинет')
      click_link('Зарегистрироваться')
      users_data = eval(File.open('tests_data/new_users_data', &:read))
      new_user = Registration.new(users_data[:surname], users_data[:name], users_data[:email], users_data[:password])
      new_user.register_new_user
      expect(page).to have_xpath(AuthLocators::AUTH_USERNAME)
    end
  end
end