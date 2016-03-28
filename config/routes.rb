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
  patch '/users/:id', to: 'users#update', as: 'patch'
  delete '/users/:id', to: 'users#destroy', as:'delete_user'

  #blog
  get '/blogs', to: 'blog#index', as: 'blogs'
  get '/blogs/new', to: 'blog#new'
  post '/blogs', to: 'blog#create', as: 'new_blog'
  get '/blogs/:id', to: 'blog#show', as: 'blog'
  get '/blogs/:id/edit', to: 'blog#edit', as: 'edit_blog'
  patch '/blogs/:id', to: 'blog#update'
  delete '/blogs/:id', to: 'blog#destroy', as: 'delete_blog'
end
