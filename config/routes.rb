Rails.application.routes.draw do
  resources :projects
  root 'static_pages#home'
  
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get 'groupsI', to: 'groups#index'
  get '/groups', to: 'groups#new'
  post '/groups', to: 'groups#create'
  delete '/logout', to: 'sessions#destroy'
  # get '/dashboardU', to: 'users#index'
  get '/dashboardA', to: 'static_pages#dashboardA'

  get '/projects', to: 'projects#index'


  get '/dashboardU', to: 'users#dashboardU'

  resources :groups



  resources :users
end
