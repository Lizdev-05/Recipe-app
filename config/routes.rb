Rails.application.routes.draw do
  devise_for :users, sign_out_via: [:get, :post]

  resources :foods 

  resources :users, only: [:index]
  resources :recipes

  root to: "foods#index"
end
