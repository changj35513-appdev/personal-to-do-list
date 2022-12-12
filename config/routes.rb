Rails.application.routes.draw do


  root "categories#index"
  resources :bookmarks
  resources :categories
  resources :tasks
  devise_for :users
end
