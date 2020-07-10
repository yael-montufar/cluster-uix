Rails.application.routes.draw do
  root to: 'pages#home'

  get 'kitchensink', to: 'pages#kitchen_sink'
  get 'test', to: 'pages#test'

  # ID
  # resources :pages, only: [:show, :new, :create]

  # SLUG
  resources :pages, param: :slug, except: [:index]
end
