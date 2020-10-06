require 'capybara/dsl'

class CartPage
  include Capybara::DSL
  def click_continue_shopping
    find(:xpath, CartLocators::CONTINUE_SHOPPING).click
  end

  def click_go_to_checkout
    find(:xpath, CartLocators::CHECKOUT).click
  end
end