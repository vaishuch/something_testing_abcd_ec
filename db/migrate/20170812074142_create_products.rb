class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :keywords
      t.references :catagory_types, foreign_key: true
      t.datetime :available_at
      t.datetime :deleted_at
      t.decimal :price

      t.timestamps
    end
  end
end
