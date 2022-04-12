Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/create'
  get 'static_pages/home'
  root 'static_pages#home'
  
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'session#destroy'

  resources :users
end
