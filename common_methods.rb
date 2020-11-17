module CommonMethods
  def get_value_from_element(locator)
    # Type locator in next way: 'tag_name.class_name'
    text = find(locator).text
    text.scan(/\d/).join('')
  end

  def add_watch_to_cart
    visit('/')
    $search.search_product('Amazfit GTR')
    click_link(ProductsConstants::WATCH)
    click_button('Купить')
  end
end
