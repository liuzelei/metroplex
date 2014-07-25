Rails.application.routes.draw do

  # devise :users
  devise_for :users, skip: [:registrations]

  # resources :services
  resources :services, only: [:index]

  # resources :vendors
  resources :vendors

  # did
  resources :dids, only: [:index, :show]

  namespace :ajax do
    get "districts/provinces", defaults: { format: 'json' }
    get "districts/cities", defaults: { format: 'json' }
    get "districts/regions", defaults: { format: 'json' }
  end

  namespace :wizards do
    resources :aa_vendors, only: [:new, :create]
    resources :vendors, only: [:new, :create]
  end

  #namespace :admin do
  resources :users
  #end

  resources :service_orders
  resources :aa_service_orders

  get "home/index"
  
  root 'home#index'
end
