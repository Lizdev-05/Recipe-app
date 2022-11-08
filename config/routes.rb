Rails.application.routes.draw do
  devise_for :users, sign_out_via: [:get, :post]
 
  resources :foods 

  root to: "foods#index"
end
