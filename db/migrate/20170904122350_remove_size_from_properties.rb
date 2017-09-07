class RemoveSizeFromProperties < ActiveRecord::Migration[5.1]
  def change
    remove_column :properties, :size, :String
  end
end
