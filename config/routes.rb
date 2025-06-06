Rails.application.routes.draw do
  devise_for :users
  get "signin", to: "signin#signin"
  get "welcome", to: "welcome#index"
  root "signin#index"
  resources :products, only: [:index]
end