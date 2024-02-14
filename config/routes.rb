# config/routes.rb
Rails.application.routes.draw do
  devise_for :users do 
    resources :movies, only: [:new, :index, :show, :create] 
    #   resources :ratings, only: [:new, :create]
    # resources :movies
    # resources :ratings
    # resources :genres
  end
end
