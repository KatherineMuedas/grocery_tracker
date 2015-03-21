Rails.application.routes.draw do
  devise_for :users
  resources :users

  resources :products
  resources :purchases

  root to: 'products#index'
  
end
