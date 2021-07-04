Rails.application.routes.draw do
  get 'shows/index'
  get 'shows/show'
  get 'artworks/index'
  get 'artworks/show'
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
