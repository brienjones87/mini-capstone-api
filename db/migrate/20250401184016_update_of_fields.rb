class UpdateOfFields < ActiveRecord::Migration[8.0]
  def change
    remove_column :carted_products, :integer
    remove_column :carted_products, :order_id
    add_column :carted_products, :order_id, :integer
  end
end
