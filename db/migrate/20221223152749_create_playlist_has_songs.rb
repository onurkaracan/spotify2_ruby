class CreatePlaylistHasSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :playlist_has_songs do |t|

      t.timestamps
    end
  end
end
