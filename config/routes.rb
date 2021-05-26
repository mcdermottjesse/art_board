
Rails.application.routes.draw do
  root 'welcome#index', as: :homepage
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create' 
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  
  get '/search' => 'search#index'
  
  resources :art, as: :art
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  match '*unmatched', to: 'application#route_not_found', via: :all

end