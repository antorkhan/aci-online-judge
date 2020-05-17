Rails.application.routes.draw do

  get 'user_submissions/create'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :user_submissions, only: [:create]
  resources :problems, only: [:show]


  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
