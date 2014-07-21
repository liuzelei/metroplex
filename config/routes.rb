Rails.application.routes.draw do

  # devise :users
  devise_for :users, skip: [:registrations]

  # resources :users
  resources :users

  # resources :services
  resources :services 

  get "home/index"
  
  root 'home#index'
end
