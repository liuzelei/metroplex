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
    resources :aa_vendors, only: [:new, :create, :message]
    namespace :vendor_register do
      get :basic_info
      post :basic_info_verify
      get :review
      post :commit
      get :message
    end
  end

  namespace :admin do
    resources :users
  end

  resources :service_orders
  resources :aa_service_orders
  resources :aa_trailers
  resources :aa_workers
  resources :locator_devices

  get "home/index"
  
  root 'home#index'
end
