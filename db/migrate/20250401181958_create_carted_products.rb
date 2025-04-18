class CreateCartedProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :carted_products do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :quantity
      t.string :status
      t.string :order_id
      t.string :integer

      t.timestamps
    end
  end
end
