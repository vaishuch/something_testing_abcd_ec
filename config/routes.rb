Rails.application.routes.draw do
  #get 'carts/show'

  #get 'products/show'

  #get 'products/index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'

 # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: 'home#index'


devise_for :users,:controllers => { :registrations =>'registration'}
get 'products/category_products' => 'products#category_products'
resources :products
resources :carts, only: [:show, :new, :create] 
end
