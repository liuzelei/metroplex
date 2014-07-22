Rails.application.routes.draw do

  # devise :users
  devise_for :users, skip: [:registrations]

  # resources :users
  resources :users

  # resources :services
  resources :services, only: [:index]

  # resources :vendors
  resources :vendors

  namespace :ajax do
    get "districts/provinces", defaults: { format: 'json' }
    get "districts/cities", defaults: { format: 'json' }
    get "districts/regions", defaults: { format: 'json' }
  end

  get "home/index"
  
  root 'home#index'
end
