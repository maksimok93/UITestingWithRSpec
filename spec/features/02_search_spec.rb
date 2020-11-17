require_relative '../spec_helper'

RSpec.describe 'Search functionality', type: :feature do
  before(:each) do
    visit('/')
  end

  it 'Verifies product search without options' do
    $search.search_product('Xiaomi mi play')
    expect(page).to have_content(ProductsConstants::XIAOMI)
  end

  it 'Verifies search without options' do
    $search.search_product('garmin 235')
    expect(page).to have_content('Garmin Forerunner 235 Black/Grey (010-03717-55)')
  end

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
