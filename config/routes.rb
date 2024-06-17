Rails.application.routes.draw do
  root "homes#top"
  
  get '/homes/top', to: 'homes#top', as: 'homes_path'
  
  get '/books/new', to: 'books#new', as: 'new_book'
  post 'books' => 'books#create'
  get '/books/:id' => 'books#show', as: 'book_show'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  get '/books', to: 'books#index', as: 'books_index'
  patch 'books/:id' => 'books#update', as: 'update_book'
  
  get '/about', to: 'homes#about', as: 'about'
  get '/top', to: 'homes#top', as: 'top'
  
  devise_for :users
  
  get 'users/show', to: 'users#show'
  get 'users/edit'
  get 'users/index', to: 'users#index'
  post 'signin', to: 'users#index'
  
  resources :users
  resources :books
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
