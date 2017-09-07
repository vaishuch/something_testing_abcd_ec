class CreateJoinTableProductPropertyvalue < ActiveRecord::Migration[5.1]
  def change
    create_join_table :products, :propertyvalues ,id: false do |t|
      
	   t.integer :product_id
       t.integer :propertyvalue_id

       t.index [:product_id, :propertyvalue_id]
       t.index [:propertyvalue_id, :product_id]
    end
  end
end
