Rails.application.routes.draw do
  resources :playlist_has_songs
  resources :playlists
  resources :songs
  resources :albums
  resources :artists
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
