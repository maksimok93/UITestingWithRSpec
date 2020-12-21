module CommonMethods
  $users_data = eval(File.open('tests_data/users_data', 'r:UTF-8', &:read))

  def get_value_from_element(locator)
    # Type locator in next way: 'tag_name.class_name'
    text = find(locator).text
    text.scan(/\d/).join('')
  end

  def get_product_price(product_name)
    find(:xpath, "//span[text()[contains(.,'#{product_name}')]]/../following-sibling::#{ProductAttributes::PRICE}").text
  end

  def add_watch_to_cart
    visit('/')
    $search.search_product('Amazfit')
    click_link(ProductsConstants::WATCH)
    click_button('Купить')
  end

  def create_new_account
    user = UserActions.new($users_data[:surname], $users_data[:name], $users_data[:email], $users_data[:password])
    user.register_new_user
  end

  def authorize_as_user
    user = Authorization.new($users_data[:email], $users_data[:password])
    user.auth_as_registered_user
  end
end
