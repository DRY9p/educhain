class AddNewPriceFieldToCourses < ActiveRecord::Migration[8.0]
  def change
    remove_column :courses, :price, :decimal

    add_monetize :courses, :price
  end
end
