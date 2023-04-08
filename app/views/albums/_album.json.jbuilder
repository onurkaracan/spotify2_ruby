json.extract! album, :id, :name, :release_date, :album_cover, :copyright, :created_at, :updated_at
json.url album_url(album, format: :json)
