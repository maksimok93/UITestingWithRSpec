module ProductsConstants
  XIAOMI = 'Силиконовый чехол BoxFace Xiaomi Mi Play'
  REDMI = 'Наушники Xiaomi Redmi Airdots Basic S TWSEJ05LS TWS Black'
  DELL = 'Dell G3 3500 (G3500F716S1TN2060L-10BK)'
  WATCH = 'Смарт-часы Amazfit T-Rex Khaki (601686)'
  SAMSUNG = 'Телевизор Samsung UE50TU7002UXUA'
  FIREPLACE_1 = 'Каминокомплект IDaMebel Gemma Fobos Brass'
  FIREPLACE_2 = 'Каминокомплект IDaMebel Seville дуб VA-2683'
end

module ProductAttributes
  PRICE = "div[@class='goods-tile__prices']//div[@class='goods-tile__price']//p//span[@class='goods-tile__price-value']"
end

module Config
  HOME_PAGE = 'https://rozetka.com.ua'
  PERSONAL_INFO = 'https://rozetka.com.ua/cabinet/personal-information/'
  DRIVER = '/usr/local/bin/chromedriver'
end

module Alerts
  USER_EXISTS = 'Пользователь с логином newtest1@newtest.com уже зарегистрирован'
end
