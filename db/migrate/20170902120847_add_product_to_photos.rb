class AddProductToPhotos < ActiveRecord::Migration[5.1]
  def change

  	add_reference :photos, :product, foreign_key: true
  end
end
