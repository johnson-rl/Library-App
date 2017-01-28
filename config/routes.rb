Rails.application.routes.draw do
  root 'users#index'

  resources :users

  get '/users/new' => 'users#new'

  get '/login', to: 'sessions#new'

  post '/sessions', to: 'sessions#create'
end
