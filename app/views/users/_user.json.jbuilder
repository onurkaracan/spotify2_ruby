json.extract! user, :id, :user_name, :email, :country, :age, :created_at, :updated_at
json.url user_url(user, format: :json)
