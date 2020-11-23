require_relative '../spec_helper'

RSpec.describe 'Delete user', type: :feature do
  include CommonMethods
  context 'When on Main Page' do
    before(:each) do
      page.windows[0].maximize
      visit('/')
      click_link('войдите в личный кабинет')
      click_link('Зарегистрироваться')
      create_new_account
    end

    it 'Verifies deleting account' do
      click_link('Мои заказы')
      find(:css, CabinetLocators::PERSONAL).click
      action = UserActions.new
      action.delete_user
      expect(page).to have_content('войдите в личный кабинет')
    end
  end
end
