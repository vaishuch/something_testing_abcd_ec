Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  #get 'home/index'
  root to: 'home#index'
  devise_for :users, :controllers => { :registrations =>'registration'} 
  resources :products
  resources :carts, only: [:show, :new, :create] 
  resources :addresses, only: [:show, :new, :create] 
  resources :orders, only: [:new, :create]
end
