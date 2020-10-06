require 'capybara/dsl'

class SearchPage
  include Capybara::DSL
  def search_product(product_title)
    fill_in 'Я ищу...', with: product_title
    click_button('Найти')
  end
end

class AdditionalOptions
  include Capybara::DSL
  def choose_manufacturer_checkbox(manufacturer)
    find(:css, "label[for='#{manufacturer}']").set(true)
  end

  def select_price_range(min, max)
    find(:css, SearchPageLocators::MIN_PRICE).set(min)
    find(:css, SearchPageLocators::MAX_PRICE).set(max)
    find(SearchPageLocators::OK_BUTTON).click
  end
end
