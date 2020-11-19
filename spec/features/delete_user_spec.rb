require_relative '../spec_helper'

RSpec.describe 'Delete user', type: :feature do
  context 'When on Main Page' do
    before(:each) do
      page.windows[0].maximize
      visit('/')
      click_link('войдите в личный кабинет')
      click_link('Зарегистрироваться')
      users_data = eval(File.open('tests_data/users_data', 'r:UTF-8', &:read))
      @user = UserActions.new(users_data[:surname], users_data[:name], users_data[:email], users_data[:password])
      @user.register_new_user
      find(:xpath, CabinetLocators::EXIT).click
    end

    it 'Verifies deleting account' do
      visit('/')
      click_link('Мои заказы')
      find(:css, CabinetLocators::PERSONAL).click
      user = UserActions.new
      user.delete_user
      expect(page).to have_content('войдите в личный кабинет')
    end
  end
end
