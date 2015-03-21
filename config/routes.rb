Rails.application.routes.draw do
  get 'purchases/index'

  get 'purchases/show'

  get 'products/index'

  get 'products/new'

  get 'products/createshow'

  get 'products/edit'

  get 'products/update'

  get 'products/destroy'

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
