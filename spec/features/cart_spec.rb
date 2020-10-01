require_relative '../spec_helper'

feature 'RSpec: practical task_2, Rozetka UI Testing', type: :feature do
  before(:each) do
    visit('/')
    @search_amazfit = SearchPage.new
  end

  describe 'When on Search Page' do
    it 'Verifies adding product to the cart' do
      @search_amazfit.search_product('Amazfit GTR')
      click_link('Смарт-часы Amazfit GTR 47mm Aluminum alloy (514737)') # click link by link text
      click_button('Купить')
      sleep 2

      click_button('Продолжить покупки')

      # find('/html/body/app-root/single-modal-window/div[2]/div[2]/rz-shopping-cart/div/div/div/a').click
      # find('//a[contains(text(), "Оформить заказ")]').click

      # find('//*[contains(text(), "Смарт-часы Amazfit GTR")]/../following-sibling::div[2]/div[2]/app-buy-button/button').click
      # @search_amazfit.add_product_to_cart('Смарт-часы Amazfit GTR')
    end
  end
end