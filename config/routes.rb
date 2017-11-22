Rails.application.routes.draw do

  root 'static#index'

  resources :users
  resources :rides
  resources :attractions
  resources :sessions

  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  post '/rides/new', to: 'rides#new'
end
