Rails.application.routes.draw do


  devise_for :users


  resources :products

  resources :vendors
  resources :customers
  resources :carts
  resources :medorders
  resources :meddetails



  post '/medorders', to: 'medorders#create '

  post   '/carts/new', to: 'carts#create'
  get   '/carts/new/ascending', to:'carts#sort', as: 'sort' #sort action
  get '/carts/new/details', to: 'carts#show'

  # get  '/order_details', to: 'meddetails#show' #customer route for order_details


 root 'products#index'



 
end
