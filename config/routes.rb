Rails.application.routes.draw do
  root 'users#index'

  resources :users

  get '/users/new' => 'users#new'
end
