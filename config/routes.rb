Rails.application.routes.draw do
  resources :discussions
  resources :posts
  resources :aspects
  resources :topics
  resources :users

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  root 'site#home'

end
