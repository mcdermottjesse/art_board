
Rails.application.routes.draw do
  root 'welcome#index'
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create' 

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  resources :art
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end