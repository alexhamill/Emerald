Rails.application.routes.draw do

  get "mine/index"
  devise_for :users
  get "signin", to: "signin#signin"
  get "welcome", to: "welcome#index"
  get "mine", to: "mine#index"

  post 'add_emeralds', to: 'mine#mine'

  root "signin#index"
  resources :products, only: [:index]

  resources :products do
  post :add_to_owned, on: :member
  end

end