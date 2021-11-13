Rails.application.routes.draw do


  devise_for :users


  resources :products

  resources :vendors
  resources :customers
  resources :medorders
  resources :meddetails

  # post '/medorders', to: 'medorders#create', as: 'medorders'
  post '/medorders', to: 'medorders#create '

  get 'customer/:id/medorder/:medorder_id', to: 'meddetails#new'
  post 'customer/:id/medorder/:medorder_id', to: 'meddetails#create'
  get  "/customer/:id/medorder/:medorder_id/meddetail/:meddetail_id", to: 'meddetails#show'


 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root 'products#index'
end
