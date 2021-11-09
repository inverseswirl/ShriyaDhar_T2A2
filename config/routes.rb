Rails.application.routes.draw do
  devise_for :users
  # get '/medical_products', to: 'medical_products#index'
  # get '/medical_products/new',  to: 'medical_products#new'
  # post '/'
  resources :medical_products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root 'medical_products#index'
end
