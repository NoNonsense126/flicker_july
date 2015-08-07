class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :album_id
      t.string :description
      t.string :file
      t.integer :user_id
    end
  end
end
