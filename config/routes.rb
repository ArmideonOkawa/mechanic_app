Rails.application.routes.draw do
  resources :issues
  get "/pages/:page" => "pages#show"

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
 # get '/users/:id' => 'users#show'
 resources :cars
 resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "pages#show", page: "home"
end
