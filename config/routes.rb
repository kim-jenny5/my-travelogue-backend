Rails.application.routes.draw do
  resources :destinations
  resources :trips
  resources :users
  # resources :sessions

  post "/signup", to: "users#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/authorized", to: "sessions#show"
  post "/newtrip", to: "trips#create"
  get "/dashboard", to: "users#show"
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
