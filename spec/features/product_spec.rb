require_relative '../spec_helper'

feature 'Ruby: RSpec: practical task_2', type: :feature do
  before(:each) do
    visit('/')
    @search_smartphone = SearchPage.new
    @options = AdditionalOptions.new
  end

  describe 'When on Main Page' do
    it 'Verifies product search without options' do
      @search_smartphone.search_product('Xiaomi mi play')
      expect(page).to have_content('Силиконовый чехол BoxFace Xiaomi Mi Play')
    end
  end

  describe 'When on Search page' do
    it 'Verifies product search with specific price range' do
      @search_smartphone.search_product('Xiaomi Redmi')
      @options.select_price_range(6000, 6400)
      expect(page).to have_content('Мобильный телефон Xiaomi Redmi Note 9 Pro 6/64GB Tropical Green')
    end

    it 'Verifies product search with specific manufacturer' do
      @search_smartphone.search_product('G3 3500')
      @options.choose_manufacturer_checkbox('Dell')
      expect(page).to have_content('G3500F716S1TN2060L-10BK')
    end
  end
end
