class CreateCartitems < ActiveRecord::Migration[5.1]
  def change
    create_table :cartitems do |t|
      t.references :cart, foreign_key: true
      t.integer :product_id
      t.float :price
      t.integer :qty

      t.timestamps
    end
  end
end
