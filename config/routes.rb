Rails.application.routes.draw do
  root to: "static#home"
  
  namespace :api do
    namespace :v1 do
  resources :requests

resources :sessions, only: [:create, :show]
resources :users, only: [:create, :show, :index] 
resources :registrations, only: [:create]   
delete  :logout, to:"sessions#logged_out"
get :looged_in, to: "sessions#logged_in"   

    end

  end 
end

