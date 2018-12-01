Rails.application.routes.draw do
	get 'home/index'
	
	resources :boards
	
	root 'home#index'
end
