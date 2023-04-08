class AddArtistIdToAlbum < ActiveRecord::Migration[7.0]
  def change
    add_reference :albums, :artists, foreign_key: true
  end
end
