json.extract! playlist, :id, :name, :duration, :genre, :media_url, :created_at, :updated_at
json.url playlist_url(playlist, format: :json)
