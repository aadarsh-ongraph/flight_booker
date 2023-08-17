Rails.application.routes.draw do
  # get 'bookings/new'
  # get 'bookings/create'
  # get 'flights/index'
  # # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # # Defines the root path route ("/")
  # # root "articles#index"
  # resources :flights, only: [:index]
  # resources :bookings, only: [:new, :create]
  # root to: 'flights#index'

  root 'flights#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :flights
  resources :bookings
  # Defines the root path route ("/")
  # root "articles#index"
  get "all",to: 'flights#show'
  resources :airport
end
