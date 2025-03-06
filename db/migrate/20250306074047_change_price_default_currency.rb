class ChangePriceDefaultCurrency < ActiveRecord::Migration[8.0]
  def change
    change_column_default :courses, :price_currency, from: "USD", to: "RUB"
  end
end
