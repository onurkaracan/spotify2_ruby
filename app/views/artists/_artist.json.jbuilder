json.extract! artist, :id, :name, :country, :about, :monthly_listener, :integer, :created_at, :updated_at
json.url artist_url(artist, format: :json)
