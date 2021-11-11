Rails.application.routes.draw do
  # get 'products/index'
  # get 'products/show'
  # get 'products/new'
  # get 'products/create'
  # get 'products/edit'
  # get 'products/update'
  # get 'vendors/index'
  devise_for :users
  # get '/medical_products', to: 'medical_products#index'
  # get '/medical_products/new',  to: 'medical_products#new', as: :products

  resources :products
  # post '/medical_products/new', to: 'medical_products#create'
  # get   '/medical_products/:id/edit', to: 'medical_products#edit'

  resources :vendors 



 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root 'products#index'
end
