Rails.application.routes.draw do
  get "/pages/:page" => "pages#show"

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

 resources :users, only:[:new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "pages#show", page: "home"
end
