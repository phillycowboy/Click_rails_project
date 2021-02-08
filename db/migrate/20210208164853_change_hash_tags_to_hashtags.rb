class ChangeHashTagsToHashtags < ActiveRecord::Migration[6.1]
  def change
    rename_table :hash_tags, :hashtags 
  end
end
