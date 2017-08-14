class CreateCatagoryTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :catagory_types do |t|
      t.string :cat_type
      t.references :catagory, foreign_key: true

      t.timestamps
    end
  end
end
