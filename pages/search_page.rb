require 'capybara/dsl'

class SearchPage
  include Capybara::DSL
  def search_product(product_title)
    fill_in 'Я ищу...', with: product_title
    click_button('Найти')
  end
end

