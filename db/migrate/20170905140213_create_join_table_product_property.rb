class CreateJoinTableProductProperty < ActiveRecord::Migration[5.1]
  def change
    create_join_table :products, :properties , id: false  do |t|
       t.integer :product_id
       t.integer :property_id

       t.index [:product_id, :property_id]
       t.index [:property_id, :product_id]
    end
  end
end
