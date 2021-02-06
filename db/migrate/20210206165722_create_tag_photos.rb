class CreateTagPhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :tag_photos do |t|
      t.integer :photo_id
      t.integer :hash_tag_id 
      t.timestamps
    end
  end
end
