Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  root to: 'pages#home'
  get 'press', to: 'pages#press'
  resources :artists
  resources :artworks
  resources :shows
  resources :staffs
  # resources :fairs
end
