Rails.application.routes.draw do


  devise_for :users


  resources :products

  resources :vendors
  resources :customers
  resources :medorders
  resources :meddetails

  # post '/medorders', to: 'medorders#create', as: 'medorders'
  post '/medorders', to: 'medorders#create '

  get 'medorder/:id/customer/:customer_id/', to: 'meddetails#new'
  post 'medorder/:id/customer/:customer_id/', to: 'meddetails#create'
  get  'medorder/:id/customer/:customer_id/meddetails', to: 'meddetails#show'


 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root 'products#index'
end
