Rails.application.routes.draw do
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"


  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
  # Defines the root path route ("/")
  # root "articles#index"
  resources :ratings
  resources :users
  resources :wishlists
  resources :wishlist_items
  resources :bundles
  resources :bundle_items
  resources :featureds




end
