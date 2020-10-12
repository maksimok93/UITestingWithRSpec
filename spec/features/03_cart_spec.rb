require_relative '../spec_helper'

feature 'RSpec: practical task_2, Rozetka UI Testing', type: :feature do
  include Components
  describe 'When to Cart added one product' do
    before(:each) do
      visit('/')
      $search.search_product('Amazfit GTR')
      click_link(ProductsConstants::WATCH)
      click_button('Купить')
    end

    it 'Verifies add product to the cart' do
      expect(get_value_from_element(Tags::TOTAL_PRICE)).to eq('3474')
    end

    it 'Verifies update product quantity in the cart' do
      find(CartLocators::PLUS_ONE).click
      sleep 2
      expect(get_value_from_element(Tags::TOTAL_PRICE)).to eq('6948')
    end

    it 'Verifies remove product from the cart' do
      $product.remove_from_cart(ProductsConstants::WATCH)
      expect(find(Tags::EMPTY_CART).text).to eq('Корзина пуста')
    end
  end

  describe 'When to Cart added two products' do
    before(:each) do
      visit('/')
      $search.search_product('Amazfit GTR')
      click_link(ProductsConstants::WATCH)
      click_button('Купить')
      visit('/')
      $search.search_product(ProductsConstants::SAMSUNG)
      click_link(ProductsConstants::SAMSUNG)
      click_button('Купить')
    end

    it 'Verifies adding two products to the cart' do
      expect(get_value_from_element(Tags::TOTAL_PRICE)).to eq('15473')
    end

    it 'Verifies choosing product additional option when two products' do
      pending('Additional option sometimes non-clickable')
      $product.choose_additional_options('Samsung', 'Настройка Smart TV Ultra')
      expect(get_value_from_element(Tags::TOTAL_PRICE)).to eq('16472')
    end

    it 'Verifies remove one product from the cart when two products' do
      sleep 2
      $product.remove_from_cart(ProductsConstants::SAMSUNG)
      sleep 2
      expect(get_value_from_element(Tags::TOTAL_PRICE)).to eq('3474')
    end
  end
end
