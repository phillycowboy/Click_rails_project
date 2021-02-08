class AddTagToTagPhoto < ActiveRecord::Migration[6.1]
  def change
    add_column :tag_photos, :tag, :string 
  end
end
