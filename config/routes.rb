# Rails.application.routes.draw do
#   resources :art
  
#   root 'welcome#index'
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# end

Rails.application.routes.draw do
  
  get "art" => "art#index"
  get"art/new" => "art#new"
  post "art/new" => "art#create"
  
  
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end