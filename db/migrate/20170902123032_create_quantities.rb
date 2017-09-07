class CreateQuantities < ActiveRecord::Migration[5.1]
  def change
    create_table :quantities do |t|
      t.references :product, foreign_key: true
      t.float :purchase_price
      t.float :selling_price
      t.integer :purchase_qty
      t.integer :available_qty

      t.timestamps
  end
  end
end
