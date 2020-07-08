Rails.application.routes.draw do
  root to: 'pages#home'

  get 'kitchensink', to: 'pages#kitchen_sink'

  # ID
  # resources :pages, only: [:show, :new, :create]

  # SLUG
  resources :pages, param: :slug, only: [:show, :new, :create, :edit, :update]
end
