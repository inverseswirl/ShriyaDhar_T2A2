Rails.application.routes.draw do

  devise_for :users


  resources :products

  resources :vendors
  resources :medorders
  # post '/medorders', to: 'medorders#create', as: 'medorders'
  # get '/medorders/:id', to: 'medorders#create', as: 'medorder'




 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root 'products#index'
end
