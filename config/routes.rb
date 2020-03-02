Rails.application.routes.draw do
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

 #resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
