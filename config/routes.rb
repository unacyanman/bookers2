Rails.application.routes.draw do
  root "homes#top"
  get '/homes/top', to: 'homes#top', as: 'homes_path'
  
  get 'books/new'
  post 'books' => 'books#create'
  
  get '/about', to: 'homes#about', as: 'about'
  get '/books', to: 'books#index', as: 'books_index'
  get '/top', to: 'homes#top', as: 'top'
  
  devise_for :users
  
  get 'users/show'
  get 'users/edit'
  get '/users', to: 'users#index', as: 'users_index'
  
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
