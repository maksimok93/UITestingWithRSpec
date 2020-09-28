require_relative '../spec_helper'

feature 'Ruby: RSpec: practical task_2', type: :feature do
  describe 'When on Main Page' do
    it 'Verifies searching for a specific product without options' do
      visit('/')
      search_smartphone = SearchPage.new
      search_smartphone.search_product('Xiaomi mi play')

      expect(page).to have_content('Силиконовый чехол BoxFace Xiaomi Mi Play')
    end
  end
end

