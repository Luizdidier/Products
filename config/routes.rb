Rails.application.routes.draw do
	namespace 'api' do
		namespace 'v1' do
			resources :categories
			resources :brands
			resources :products
		end
	end
devise_for :users
resources :products
resources :brands
resources :categories
resources :users
root 'products#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
