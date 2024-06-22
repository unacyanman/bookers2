Rails.application.routes.draw do
  root "homes#top"
  
  get '/about', to: 'homes#about', as: 'about'
  
  devise_for :users
  
  resources :users, onlu: [:new, :create, :index, :show]
  resources :books, onlu: [:new, :create, :index, :show]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
