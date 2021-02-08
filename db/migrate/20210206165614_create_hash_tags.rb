class CreateHashTags < ActiveRecord::Migration[6.1]
  def change
    create_table :hash_tags do |t|
      t.string :tag 
      t.timestamps
    end
  end
end

#needs to be renamed hashtags 
#attr tag 
