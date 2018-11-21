Rails.application.routes.draw do

  get '/signup', to: 'users#new'

  get '/about', to: 'static_pages#about'
  
  get '/help', to: 'static_pages#help'

  root 'static_pages#home'

  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy'

  resources :users

end