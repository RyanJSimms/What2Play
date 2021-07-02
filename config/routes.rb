Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/games" => "games#index"
  get "/games/:id" => "games#show"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  post "/favorites" => "favorites#create"
end
