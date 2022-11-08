Rails.application.routes.draw do
  devise_for :users, sign_out_via: [:get, :post]
 
  resources :foods, only: [:index]

  root to: "foods#index"
end
