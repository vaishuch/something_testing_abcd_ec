class RemoveColorFromProperties < ActiveRecord::Migration[5.1]
  def change
    remove_column :properties, :color, :string
  end
end
