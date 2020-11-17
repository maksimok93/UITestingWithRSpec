require_relative '../spec_helper'

RSpec.describe 'Delete user', type: :feature do
  context 'When on Main Page' do
    it 'Verifies deleting account' do
      page.windows[0].maximize
      visit('/')
      click_link('войдите в личный кабинет')
      users_data = eval(File.open('tests_data/users_data', &:read))
      auth = Authorization.new(users_data[:email], users_data[:password])
      auth.auth_as_registered_user
      click_link('Мои заказы')
      user = UserActions.new
      user.delete_user
      expect(page).to have_content('войдите в личный кабинет')
    end
  end
end
