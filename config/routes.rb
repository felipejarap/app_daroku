Rails.application.routes.draw do
  devise_for :users
  resources :suggestions
  resources :products do
  resources :orders, only: :create
  end
  resources :orders
  resources :comments
  resources :type_suggestions
  resources :classifications
  resources :users
  resources :categories
  resources :cities
  resources :municipalities
  root to: 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
