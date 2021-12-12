Rails.application.routes.draw do
  resources :destinations
  resources :trips
  resources :users
  # resources :sessions

  post "/signup", to: "users#create"
  # get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/authorized", to: "sessions#show"
  post "/trips/new", to: "trips#create"


  # CHANGE THESE TWO
  get "/dashboard", to: "users#show"
  # get  "/dashboard", to: "trips#index"
end
