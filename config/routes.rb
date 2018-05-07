Rails.application.routes.draw do
  get 'house_array/index'

  resources :users
  root 'house_array#index'
end
