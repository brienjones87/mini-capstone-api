class FieldTypeChanges < ActiveRecord::Migration[8.0]
  def change
    change_column :products, :description, :text
    change_column :products, :price, :decimal, precision: 9, scale: 2
  end
end
