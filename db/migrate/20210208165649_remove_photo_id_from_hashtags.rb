class RemovePhotoIdFromHashtags < ActiveRecord::Migration[6.1]
  def change
    remove_column :hashtags, :photo_id
  end
end
