Rails.application.routes.draw do
  # get '/signup' => 'users#new'
  # post '/signup' => 'users#show'


  resources :users
  resources :comments
  resources :photos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
