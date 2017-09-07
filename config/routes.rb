Rails.application.routes.draw do
mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
root to: 'home#index'
devise_for :users,:controllers => { :registrations =>'registration'}
get 'products/category_products' => 'products#category_products'
resources :products
resources :carts, only: [:show, :new, :create] 
resources :addresses, only: [:show, :new, :create] 
resources :orders, only: [:new, :create]
end
