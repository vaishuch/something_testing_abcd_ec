class CreatePropertyvalues < ActiveRecord::Migration[5.1]
  def change
    create_table :propertyvalues do |t|
      t.string :value
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
