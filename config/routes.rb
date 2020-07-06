Rails.application.routes.draw do
  root to: 'pages#home'
  get 'kitchensink', to: 'pages#kitchen_sink'
  resources :pages, only: [:show, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
