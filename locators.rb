module CabinetLocators
  DELETE_ACCOUNT = '//button[text()[contains(.,"Удалить аккаунт")]]'
  PERSONAL = 'p[class="cabinet-user__name"]'
  AGREE = 'label[for="agreeRemove"]'
  REASON_FIELD = 'textarea[id="removeReason"]'
  CONFIRM_DELETE = '//button[@type="submit" and contains(text(), "Удалить аккаунт")]'
  EXIT = '//main-page-sidebar//ul//li/a[contains(text(),"Выход")]'
end

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
  OPENCART = 'a[href="https://rozetka.com.ua/cart/"]'
  CHECKOUT = '//a[text()[contains(.,"Оформить заказ")]]'
  CONTINUE_SHOPPING = '//a[text()[contains(.,"Продолжить покупки")]]'
  ACTIONS = 'button[aria-controls="shoppingCartActions"]'
  PLUS_ONE = 'button[aria-label="Добавить ещё один товар"]'
  TITLE = "//a[@class='cart-product__title' and contains(text()"
  REMOVE_CONTAINER = "/../following-sibling::rz-context-menu//button"
  OPTIONS = "/../../following-sibling::rz-cart-services//*[contains(text(),'Дополнительные услуги')]"
  REMOVE_PRODUCT = "/../following-sibling::rz-context-menu//ul//li//rz-trash-icon//button"
end

module Tags
  EMPTY_CART = 'h4.cart-dummy__heading'
  TOTAL_PRICE = 'div.cart-receipt__sum-price'
end
