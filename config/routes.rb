Rails.application.routes.draw do
  root to: "static#home"
  
  namespace :api do
    namespace :v1 do
  resources :requests

resources :sessions, only: [:create, :show]
resources :users, only: [:create, :show, :index] 
resources :registrations, only: [:create]   
delete  :logout, to:"sessions#logout"
get :looged_in, to: "sessions#logged_in"   
#post '/users',         to: 'users#create'
#get '/users/:user_id', to: 'users#show'
#get '/users',          to: 'users#index'
#post '/login',    to: 'sessions#create'
#post '/logout',   to: 'sessions#destroy'
#get '/logged_in', to: 'sessions#is_logged_in?'
end

    end 
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
