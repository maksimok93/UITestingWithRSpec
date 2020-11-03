module ProductsConstants
  XIAOMI = 'Силиконовый чехол BoxFace Xiaomi Mi Play'
  REDMI = 'Мобильный телефон Xiaomi Redmi Note 9 Pro 6/64GB'
  DELL = 'G3500F716S1TN2060L-10BK'
  WATCH = 'Смарт-часы Amazfit GTR 47mm Titanium (514739)'
  SAMSUNG = 'Телевизор Samsung UE50TU7002UXUA'
end

module Components
  def get_value_from_element(locator)
    # Type locator in next way: 'tag_name.class_name'
    text = find(locator).text
    text.scan(/\d/).join('')
  end
end
