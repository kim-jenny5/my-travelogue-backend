Rails.application.routes.draw do
  resources :destinations
  resources :trips
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
