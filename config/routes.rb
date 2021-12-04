Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  root to: 'pages#welcome'
  get 'home', to: 'pages#home'
  get 'press', to: 'pages#press'
  get 'contacto', to: 'pages#contacto'
  get 'playlist', to: 'pages#playlist'
  resources :artists
  resources :artworks
  resources :shows
  resources :staffs
  resources :carnivals
end
