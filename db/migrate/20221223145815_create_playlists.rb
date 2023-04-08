class CreatePlaylists < ActiveRecord::Migration[7.0]
  def change
    create_table :playlists do |t|
      t.string :name, null:false
      t.integer :duration, null:false
      t.text :genre
      t.string :media_url, null:false

      t.timestamps
    end
  end
end
