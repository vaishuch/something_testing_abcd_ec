class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.string :size
      t.string :color
      t.string :product_model

      t.timestamps
    end
  end
end
