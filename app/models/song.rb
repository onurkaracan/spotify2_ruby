class Song < ApplicationRecord
  has_many :playlist_has_songs
  has_many :playlists, through: :playlist_has_songs
end
