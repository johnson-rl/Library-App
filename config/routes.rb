Rails.application.routes.draw do
  root 'users#index'

  resources :users
  resources :libraries

  get '/users/new' => 'users#new'

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/sessions', to: 'sessions#create'

  get '/users/:user_id/libraries', to: 'library_users#index', as: 'user_libraries'
  post '/libraries/:library_id/users', to: 'library_users#create', as: 'library_users'
end
