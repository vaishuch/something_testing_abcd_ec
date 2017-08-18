class CreateJoinTableCatagoryProduct < ActiveRecord::Migration[5.1]
  def change
    create_table :catagories_products,  id: false do |t|
      t.integer :catagory_id
      t.integer :product_id
      t.index [:catagory_id, :product_id]
      t.index [:product_id, :catagory_id]
    end
  end
end
