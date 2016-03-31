Rails.application.routes.draw do

  root 'orders#index'

  get  'storage'  => 'ingredients#index'

  post 'orders/check_storage' 

  resources :cookie_orders
  resources :cookies
  resources :ingredients
  resources :recipes
  resources :pallets
  resources :customers
  resources :orders


  
end
