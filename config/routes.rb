Rails.application.routes.draw do

  root 'orders#index'

  get  'storage'  => 'ingredients#index'

  post 'orders/check_storage' 

  resources :cookie_orders
  resources :cookies
  resources :ingredients
  resources :recipes
  resources :pallets do
    put 'block', on: :collection
    put 'unblock', on: :collection
  end
  resources :orders
  

  # resources :relationships,       only: [:create, :destroy]

end
