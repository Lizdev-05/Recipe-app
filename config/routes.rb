Rails.application.routes.draw do
  devise_for :users, sign_out_via: [:get, :post]
  resources :users, only: [:index]
  resources :recipes do
    resources :recipe_foods
  end
  resources :foods, only: [:index]
  root to: "foods#index"
end
