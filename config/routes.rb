Rails.application.routes.draw do
  root "homes#top"
  
  get '/about', to: 'homes#about', as: 'about'
  
  devise_for :users
  
  resources :users, only: [:new, :create, :index, :show, :edit]
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
