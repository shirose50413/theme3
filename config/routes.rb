Rails.application.routes.draw do
  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  devise_for :users
  root to: "homes#top"
  get '/homes/about' => 'homes#about', as: 'about'
end
