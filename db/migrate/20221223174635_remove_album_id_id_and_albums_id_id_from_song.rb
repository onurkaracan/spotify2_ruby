class RemoveAlbumIdIdAndAlbumsIdIdFromSong < ActiveRecord::Migration[7.0]
  def change
    remove_column :songs, :album_id_id
    remove_column :songs, :albums_id_id
  end
end
