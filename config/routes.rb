Rails.application.routes.draw do
  # get '/signup' => 'users#new'
  # post '/signup' => 'users#show'
  root 'sessions#home'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


  resources :users, except: [:new] do 
    resources :photos
  end
  get '/signup', to: "users#new", as: "signup" 
  resources :photos do 
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
