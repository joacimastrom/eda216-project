Rails.application.routes.draw do

  root 'orders#index'

  resources :cookie_orders
  resources :cookies
  resources :ingredients
  resources :recipes
  resources :pallets
  resources :customers
  resources :orders


  
end
