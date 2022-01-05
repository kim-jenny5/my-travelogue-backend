Rails.application.routes.draw do
  resources :places
  resources :trips
  resources :users

  # root 'users#index'
  # root 'sessions#show'

  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  get "/authorized", to: "sessions#show"
  get "/dashboard", to: "users#show"
  post "/trips/new", to: "trips#create"
  post "/places/new", to: "places#create"
end
    