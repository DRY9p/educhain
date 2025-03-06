# encoding : utf-8

MoneyRails.configure do |config|
  # Определяем откуда брать региональные настройки в сответсвии c ISO используем :currency
  config.locale_backend = :currency
  # Выбор основной валюты по умолчанию
  config.default_currency = :rub
  # Отображение копеек => Money.new(1000567, "RUB").format
  config.no_cents_if_whole = false
  # ROUND_HALF_UP Стандарт округления фин.операций
  # Example: 2.4 => 2,
  #          2.5 => (2+1)=3;
  config.rounding_mode = BigDecimal::ROUND_HALF_UP
end
