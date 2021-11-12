Rails.application.routes.draw do

  devise_for :users


  resources :products

  resources :vendors
  resources :orders




 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root 'products#index'
end
