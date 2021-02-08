class RemoveTagFromTagPhotos < ActiveRecord::Migration[6.1]
  def change
    remove_column :tag_photos, :tag 
  end
end
