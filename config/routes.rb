Rails.application.routes.draw do

  root to: 'pages#home'
  get '/', to: 'pages#home'

  # Sessions
  get '/login', to: 'sessions#new', as:'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  # users
  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy', as:'delete_user'

  #blog
  get '/blog', to: 'blog#index', as: 'blogs'
  get '/blog/new', to: 'blog#new'
  post '/blog', to: 'blog#create', as: 'new_blog'
  get '/blog/:id', to: 'blog#show', as: 'blog'
  get '/blog/:id/edit', to: 'blog#edit', as: 'edit_blog'
  patch '/blog/:id', to: 'blog#update'
  delete '/blog/:id', to: 'blog#destroy', as: 'delete_blog'
end
