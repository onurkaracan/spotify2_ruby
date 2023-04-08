json.extract! song, :id, :name, :duration, :lyrics, :media_url, :created_at, :updated_at
json.url song_url(song, format: :json)
