Rails.application.routes.draw do
  #get 'carts/show'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'

 # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: 'home#index'


devise_for :users,:controllers => { :registrations =>'registration'}
resources :products
resources :carts, only: [:show, :new, :create] 
end
