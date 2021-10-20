Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  root to: 'artists#index'
  get 'press', to: 'pages#press'
  get 'welcome', to: 'pages#welcome'
  resources :artists
  resources :artworks
  resources :shows
  resources :art
  # resources :fairs
end
