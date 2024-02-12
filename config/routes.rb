# config/routes.rb

Rails.application.routes.draw do
  resources :movies
  resources :users
  resources :ratings
  resources :genres
end
