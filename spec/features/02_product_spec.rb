require_relative '../spec_helper'

feature 'Ruby: RSpec: practical task_2', type: :feature do
  before(:each) do
    visit('/')
  end

  describe 'When on Main Page' do
    it 'Verifies product search without options' do
      $search.search_product('Xiaomi mi play')
      expect(page).to have_content(ProductsConstants::XIAOMI)
    end
  end

  describe 'When on Search page' do
    it 'Verifies product search with specific price range' do
      $search.search_product('Xiaomi Redmi')
      $options.select_price_range(6000, 6400)
      expect(page).to have_content(ProductsConstants::REDMI)
    end

    it 'Verifies product search with specific manufacturer' do
      $search.search_product('G3 3500')
      $options.choose_manufacturer_checkbox('Dell')
      expect(page).to have_content(ProductsConstants::DELL)
    end
  end
end
