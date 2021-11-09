Rails.application.routes.draw do
  devise_for :users
  get 'medical_products/index', to: 'medical_products#index' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root 'medical_products#index'
end
