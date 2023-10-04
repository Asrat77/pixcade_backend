Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :ratings
  resources :users
  resources :wishlists
  resources :wishlist_items
  resources :bundles




end
