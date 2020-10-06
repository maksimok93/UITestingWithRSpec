module AuthLocators
  EMAIL = 'input[id="auth_email"]'
  PASSWORD = 'input[id="auth_pass"]'
  REMEMBER_ME = 'input[id="remember_me"]'
  AUTH_USERNAME = './/p[@class="main-auth__user-name"]'
end

module RegisterUserLocators
  SURNAME = 'input[formcontrolname="surname"]'
  NAME = 'input[formcontrolname="name"]'
  USERNAME = 'input[formcontrolname="username"]'
  PASSWORD = 'input[formcontrolname="password"]'
end

module SearchPageLocators
  MIN_PRICE = 'input[formcontrolname="min"]'
  MAX_PRICE = 'input[formcontrolname="max"]'
  OK_BUTTON = 'button[type="submit"]'
end

module CartLocators
  CHECKOUT = '//a[text()[contains(.,"Оформить заказ")]]'
  CONTINUE_SHOPPING = '//a[text()[contains(.,"Продолжить покупки")]]'
  ACTIONS = 'button[aria-controls="shoppingCartActions"]'
  REMOVE_PRODUCT = '//*[text()[contains(.,"Удалить из корзины")]]'
  PLUS_ONE = 'button[aria-label="Добавить ещё один товар"]'
end