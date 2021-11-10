Rails.application.routes.draw do
  get 'vendors/index'
  devise_for :users
  # get '/medical_products', to: 'medical_products#index'
  get '/medical_products/new',  to: 'medical_products#new', as: :products
  
  resources :medical_products
  post '/medical_products/new', to: 'medical_products#create'
  resources :vendors
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root 'medical_products#index'
end
