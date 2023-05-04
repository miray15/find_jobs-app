Rails.application.routes.draw do
  root "users#home" 
  
  resources :inquiries 

  resources :users 
  get "/signup" => "users#new"
  post "/users" => "users#create"
  
  

  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

  
  resources :searches
  get "/searches/:search" => "searches#index"
  get "/searches/:id" => "searches#show"
  

end
