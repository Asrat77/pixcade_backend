Rails.application.routes.draw do

  devise_for :clients, controllers:{
    sessions: 'clients/sessions',
    registrations: 'clients/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :ratings
  resources :users
  resources :wishlists
  resources :wishlist_items
  resources :bundles
  resources :bundle_items
  resources :featureds
  resources :games

  get '/client_details' => 'clients#index'
end
