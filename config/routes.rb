Rails.application.routes.draw do


  devise_for :users


  resources :products

  resources :vendors
  resources :customers
  resources :medorders
  resources :meddetails

  post '/medorders', to: 'medorders#create '

  post   '/meddetails/new', to: 'meddetails#create'
  get   '/meddetails/new/ascending', to:'meddetails#sort', as: 'sort'
  get  '/order_details', to: 'meddetails#show'


 root 'products#index'


 
end
