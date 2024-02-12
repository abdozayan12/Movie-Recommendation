# config/routes.rb

Rails.application.routes.draw do
  devise_for :users
  resources :movies
  resources :users
  resources :ratings
  resources :genres
end
