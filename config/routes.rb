Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:create, :index, :show, :edit, :update, :destroy]
  root to: "homes#top"
  get "/home/about" => "homes#about", as: "about"
end
