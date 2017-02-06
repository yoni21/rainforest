Rails.application.routes.draw do
  
  resources :users, only: [:new, :create]
  resources :products
  resources :sessions, only: [:new, :creat, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
