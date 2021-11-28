Rails.application.routes.draw do
  get 'fairs/index'
  get 'fairs/show'
  mount ForestLiana::Engine => '/forest'
  root to: 'pages#home'
  get 'press', to: 'pages#press'
  get 'contacto', to: 'pages#contacto'
  resources :artists
  resources :artworks
  resources :shows
  resources :staffs
end
