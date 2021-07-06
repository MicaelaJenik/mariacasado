Rails.application.routes.draw do
  get 'artists/index'
  get 'artists/show'
  root to: 'pages#home'
  get 'press', to: 'pages#press'
  get 'welcome', to: 'pages#welcome'
  resources :artists
  resources :shows
  # resources :fairs
end
