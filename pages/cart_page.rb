require 'capybara/dsl'

class CartPage
  include Capybara::DSL
  def click_continue_shopping
    find(:xpath, CartLocators::CONTINUE_SHOPPING).click
  end

  def click_go_to_checkout
    find(:xpath, CartLocators::CHECKOUT).click
  end

  def refresh_cart
    visit current_path
    find(CartLocators::OPENCART).click
  end

  def choose_additional_options(product_name, option)
    find(:xpath, "#{CartLocators::TITLE}, '#{product_name}')]#{CartLocators::OPTIONS}").click
    find(:xpath, "//span[contains(text(), '#{option}')]").set(true)
  end

  def remove_from_cart(product_name)
    find(:xpath, "#{CartLocators::TITLE}, '#{product_name}')]#{CartLocators::REMOVE_CONTAINER}").click
    # find(CartLocators::ACTIONS).click
    find(:xpath, "#{CartLocators::TITLE}, '#{product_name}')]#{CartLocators::REMOVE_PRODUCT}").click
  end
end
