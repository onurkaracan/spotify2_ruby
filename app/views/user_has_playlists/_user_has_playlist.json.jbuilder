json.extract! user_has_playlist, :id, :user_id, :playlist_id, :created_at, :updated_at
json.url user_has_playlist_url(user_has_playlist, format: :json)
