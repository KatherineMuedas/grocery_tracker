Rails.application.routes.draw do
 
  devise_for :users
  resources :users
  resources :list, only: [:show, :edit, :update]

  resources :products
  resources :purchases

  root to: 'list#show'
  
end
