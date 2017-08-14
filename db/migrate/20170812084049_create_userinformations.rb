class CreateUserinformations < ActiveRecord::Migration[5.1]
  def change
    create_table :userinformations do |t|
      t.references :user, foreign_key: true
      t.string :fname
      t.string :lname
      
      t.string :gender
      t.integer :phone
      t.integer :mobileno

      t.timestamps
    end
  end
end
