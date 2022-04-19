Rails.application.routes.draw do
  resources :reviews
  resources :projects

  root 'static_pages#home'
  
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get 'groupsI', to: 'groups#index'
  get '/groups', to: 'groups#new'
  post '/groups', to: 'groups#create'
  delete '/logout', to: 'sessions#destroy'
  get '/dashboardU', to: 'users#dashboardU'
  get '/dashboardA', to: 'static_pages#dashboardA'
  get '/add_to_group/:id', to: 'users#add_to_group', :as => 'add_to_group'
  post '/add_to_group', to: 'users#update_group'
  get '/reviews/:id/projreview', to: 'reviews#proj'
  
  resources :groups



  resources :users
end
