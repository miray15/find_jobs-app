Rails.application.routes.draw do
  resources :inquiries 
  get "/signup" => "users#new"
  post "/users" => "users#create"


  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
