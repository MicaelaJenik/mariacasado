Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  root to: 'artists#index'
  get 'press', to: 'pages#press'
  get 'welcome', to: 'pages#welcome'
  resources :artists, only: [:index, :show]
  resources :fairs, only: [:index, :show]
  resources :artworks, only: [:index, :show]
  resources :shows, only: [:index, :show]
  resources :art

end
