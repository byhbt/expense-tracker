Rails.application.routes.draw do
  resources :transactions
  resources :accounts
  devise_for :users
  resources :locations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
end
