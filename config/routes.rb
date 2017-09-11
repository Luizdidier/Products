Rails.application.routes.draw do

	devise_for :users
	resources :products
	resources :brands
	resources :categories
	resources :users
	root 'products#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end