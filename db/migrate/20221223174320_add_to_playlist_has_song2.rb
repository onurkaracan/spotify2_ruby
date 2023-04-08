class AddToPlaylistHasSong2 < ActiveRecord::Migration[7.0]
  def change
    add_reference :playlist_has_songs, :songs, foreign_key: true  #many to many
    add_reference :playlist_has_songs, :playlists, foreign_key: true  #many to many
  end
end
