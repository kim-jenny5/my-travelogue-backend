Rails.application.routes.draw do
  resources :destinations
  resources :trips
  resources :users

  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  get "/authorized", to: "sessions#show"
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
