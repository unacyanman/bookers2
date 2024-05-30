Rails.application.routes.draw do
  root to: "homes#top"
  get '/about', to: 'homes#about'
  get '/books', to: 'books#index', as: 'books'
  get '/top', to: 'homes#top', as: 'top'
  devise_for :users
  
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
