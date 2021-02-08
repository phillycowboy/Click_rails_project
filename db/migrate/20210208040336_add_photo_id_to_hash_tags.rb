class AddPhotoIdToHashTags < ActiveRecord::Migration[6.1]
  def change
    add_column :hash_tags, :photo_id, :integer 
  end
end
