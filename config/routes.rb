Rails.application.routes.draw do
  root "homes#top"
  
  get '/homes/about', to: 'homes#about', as: 'about_home'
  
  devise_for :users
  
  resources :users, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
