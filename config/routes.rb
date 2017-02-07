Rails.application.routes.draw do
  get 'products/index'

  resources :products do
  resources :reviews, only: [:show, :create, :destroy]
  end

  resources :users, only: [:new, :create]
  resources :products
  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'products#index'
end
