Rails.application.routes.draw do
  get 'list/show'

  devise_for :users
  resources :users

  resources :products
  resources :purchases

  root to: 'products#index'
  
end
