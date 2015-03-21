Rails.application.routes.draw do
  get 'list/show'

  devise_for :users
  resources :users
  resources :list, only: [:show]

  resources :products
  resources :purchases

  root to: 'list#show'
  
end
