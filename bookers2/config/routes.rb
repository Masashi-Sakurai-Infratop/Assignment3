Rails.application.routes.draw do
  root to: "homes#top"
  get "/home/about", to: "homes#about", as: "home_about"
  devise_for :users
  resources :users, only: [:index, :show, :edit]
  resources :books, only: [:index, :show, :edit, :create]
end
