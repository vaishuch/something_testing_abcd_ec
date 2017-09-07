class RemoveProductModelFromProperties < ActiveRecord::Migration[5.1]
  def change
    remove_column :properties, :product_model, :String
  end
end
