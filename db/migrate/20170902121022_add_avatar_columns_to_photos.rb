class AddAvatarColumnsToPhotos < ActiveRecord::Migration[5.1]
  def up
    add_attachment :photos, :avatar
  end

  def down
    remove_attachment :photos, :avatar
  end
end
