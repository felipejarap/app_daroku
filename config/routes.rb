Rails.application.routes.draw do
  devise_for :users
  resources :suggestions
  resources :orders
  resources :comments
  resources :type_suggestions
  resources :classifications
  resources :products
  resources :users
  resources :categories
  resources :cities
  resources :municipalities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
