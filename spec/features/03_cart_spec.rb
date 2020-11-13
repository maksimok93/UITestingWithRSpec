require_relative '../spec_helper'

def add_watch_to_cart
  visit('/')
  $search.search_product('Amazfit GTR')
  click_link(ProductsConstants::WATCH)
  click_button('Купить')
  end

feature 'RSpec: practical task_2, Rozetka UI Testing', type: :feature do
  include Components
  describe 'When Cart is empty' do
    before(:each) do
      add_watch_to_cart
    end

    it 'Verifies add product to the cart' do
      expect(get_value_from_element(Tags::TOTAL_PRICE)).to eq('4699')
    end

    it 'Verifies update product quantity in the cart' do
      sleep 1
      find(CartLocators::PLUS_ONE).click
      sleep 2
      expect(get_value_from_element(Tags::TOTAL_PRICE)).to eq('9398')
    end

    it 'Verifies remove product from the cart' do
      sleep 1
      $product.remove_from_cart(ProductsConstants::WATCH)
      expect(find(Tags::EMPTY_CART).text).to eq('Корзина пуста')
    end
  end

  describe 'When to Cart added two products' do
    before(:each) do
      add_watch_to_cart
      visit('/')
      $search.search_product(ProductsConstants::SAMSUNG)
      click_link(ProductsConstants::SAMSUNG)
      click_button('Купить')
    end

    it 'Verifies adding two products to the cart' do
      expect(get_value_from_element(Tags::TOTAL_PRICE)).to eq('16698')
    end

    it 'Verifies choosing product additional option' do
      pending('Additional option sometimes non-clickable')
      $product.choose_additional_options('Samsung', 'Настройка Smart TV Ultra')
      expect(get_value_from_element(Tags::TOTAL_PRICE)).to eq('17697')
    end

    it 'Verifies remove one product from the cart' do
      sleep 1
      $product.remove_from_cart(ProductsConstants::SAMSUNG)
      sleep 3
      expect(get_value_from_element(Tags::TOTAL_PRICE)).to eq('4699')
    end
  end
end
