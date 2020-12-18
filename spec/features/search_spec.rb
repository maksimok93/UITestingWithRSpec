require_relative '../spec_helper'

RSpec.describe 'Search functionality', type: :feature do
  include CommonMethods
  before(:each) do
    visit('/')
    page.windows[0].maximize
  end

  it 'Verifies product search without options' do
    $search.search_product('Xiaomi mi play')
    expect(page).to have_content(ProductsConstants::XIAOMI)
    expect(get_product_price(ProductsConstants::XIAOMI)).to eq('200')
  end

  it 'Verifies product search with specific price range' do
    $search.search_product('Xiaomi Redmi')
    $options.select_price_range(600, 700)
    expect(page).to have_content(ProductsConstants::REDMI)
    expect(get_product_price(ProductsConstants::REDMI)).to eq('699')
  end

  it 'Verifies product search with specific manufacturer' do
    # skip "Stale element reference: element is not attached to the page document"
    $search.search_product('G3 3500')
    $options.choose_manufacturer_checkbox('Dell')
    expect(page).to have_content(ProductsConstants::DELL)
  end

  it 'Verifies product search with additional option' do
    pending 'Stale element reference: element is not attached to the page document'
    $search.search_product('каминокомплект')
    $options.choose_additional_option('Архитектура')
    expect(page).to have_content(ProductsConstants::FIREPLACE_1)
  end

  it 'Verifies product search with different options' do
    pending 'Stale element reference: element is not attached to the page document'
    $search.search_product('каминокомплект')
    $options.choose_additional_option('С узором')
    $options.choose_additional_option('Коричневый')
    expect(page).to have_content(ProductsConstants::FIREPLACE_2)
  end
end
