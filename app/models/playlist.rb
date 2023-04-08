class Playlist < ApplicationRecord
  has_many :playlist_has_songs
  has_many :songs, through: :playlist_has_songs
end
