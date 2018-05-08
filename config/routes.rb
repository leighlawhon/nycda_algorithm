Rails.application.routes.draw do
  resources :users
  resources :houses
  resources :neighborhoods
	resources :users, :neighborhoods, :houses
	get '/', to: 'neighborhoods#index'
	post '/', to: 'neighborhoods#index'
	get '/neighborhoods', to: 'neighborhoods#new'
	post '/neighborhoods', to: 'neighborhoods#new'
end
