Rails.application.routes.draw do


  devise_for :users


  resources :products

  resources :vendors
  resources :customers
  resources :carts
  resources :medorders
  resources :meddetails


  get '/vendor_listings', to:'vendors#vendor_id'
  post '/vendor_listings', to:'vendors#vendor_listing'
  post '/medorders', to: 'medorders#create '

  post   '/carts/new', to: 'carts#create'
  get   '/carts/new/ascending', to:'carts#sort', as: 'sort' #sort action
  get '/carts/new/details', to: 'carts#show'

   post '/order_details/', to: 'meddetails#create'
   get '/order_details/:id', to: 'meddetails#show'

 root 'products#index'



 
end
