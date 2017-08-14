class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :line1
      t.string :line2
      t.string :city
      t.string :zipcode 

      t.references :userinformation, foreign_key: true
      t.references :state, foreign_key: true
      t.references :country, foreign_key: true

      t.timestamps
    end
  end
end
