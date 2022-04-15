Rails.application.routes.draw do
  root 'static_pages#home'
  
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # get '/dashboardU', to: 'users#index'
  get '/dashboardA', to: 'static_pages#dashboardA'
  resources :groups



  resources :users
end
