Rails.application.routes.draw do
  root to: "homes#top"
  get 'books/new'
  post 'books' => 'books#create'
  
  get '/about', to: 'users#about'
  get '/books', to: 'books#index', as: 'books_index'
  get '/top', to: 'homes#top', as: 'top'
  devise_for :users
  get 'users/show'
  get 'users/edit'
  
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
