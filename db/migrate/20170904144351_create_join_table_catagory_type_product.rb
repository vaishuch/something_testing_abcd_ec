class CreateJoinTableCatagoryTypeProduct < ActiveRecord::Migration[5.1]
  def change
    create_table :catagory_types_products ,  id: false do |t|
       t.integer :product_id
       t.integer :catagory_type_id

       t.index [:catagory_type_id, :product_id]
       t.index [:product_id, :catagory_type_id]

    end
  end
end
