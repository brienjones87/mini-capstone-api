class ChangeProductFieldType < ActiveRecord::Migration[8.0]
  def change
    change_column :products, :supplier_id, "numeric USING CAST(supplier_id AS numeric)"
    change_column :products, :supplier_id, :integer
  end
end
