Rails.application.routes.draw do
  get 'staffs/index'
  get 'staffs/show'
  mount ForestLiana::Engine => '/forest'
  root to: 'pages#home'
  get 'press', to: 'pages#press'
  get 'nosotros', to: 'pages#nosotros'
  resources :artists
  resources :artworks
  resources :shows
  resources :art
  # resources :fairs
end
