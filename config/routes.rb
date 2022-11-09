Rails.application.routes.draw do
  devise_for :users, sign_out_via: [:get, :post]
  resources :foods 
  resources :users, only: [:index]
  resources :recipes do
    resources :recipe_foods
  end
  root to: "foods#index"
end
