class ChangeHashTagIdToHashtagIdInTagPhotos < ActiveRecord::Migration[6.1]
  def change
    rename_column :tag_photos, :hash_tag_id, :hashtag_id
  end
end
