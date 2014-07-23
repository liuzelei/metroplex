Rails.application.routes.draw do

  # devise :users
  devise_for :users, skip: [:registrations]

  # resources :users
  resources :users

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
    resources :vendors
  end

  get "home/index"
  
  root 'home#index'
end
