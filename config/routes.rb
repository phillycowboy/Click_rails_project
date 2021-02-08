Rails.application.routes.draw do
  # get '/signup' => 'users#new'
  # post '/signup' => 'users#show'
  root 'sessions#home'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
  match '/auth/:google_oauth2/callback' => 'sessions#google', via: [:get, :post]
  resources :users  
  get '/signup', to: "users#new", as: "signup" 
  resources :photos
  
  resources :photos do 
    resources :comments
  end
  
  resources :tag_photos
  resources :hashtags
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
