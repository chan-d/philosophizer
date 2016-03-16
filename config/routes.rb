Rails.application.routes.draw do

  root to: 'pages#home'
  get '/', to: 'pages#home'

  # Sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  # users
  get '/signup', to: 'users#new'
  get '/users', to: 'users#create'
end
