Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'requests#index'
  resources :requests
  resources :users, only: [:new, :create, :show]
  resources :responses
  resources :choices
  resources :sessions, only: [:new, :create, :destroy]
end
