Rails.application.routes.draw do
  devise_for :users
  resources :reviews, except: :new
  resources :requests, except: :new
  resources :turns
  # get 'home/index'
  get 'home/about'
  root 'home#index'

  get 'requests/:turn_id/new', to: 'requests#new', as: 'new_request'
  get 'requests/:request_id/accept', to: 'requests#accept', as: 'accept_request'
  get 'requests/:request_id/refuse', to: 'requests#refuse', as: 'refuse_request'
  get 'reviews/:user_id/new', to: 'reviews#new', as: 'new_review'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
