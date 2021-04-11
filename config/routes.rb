Rails.application.routes.draw do
  get 'card_product/create'
  get 'card_product/update'
  get 'card_product/destroy'
  get 'cards/show'
  get 'productions/index'
  get 'productions/show'
  root 'static_pages#home'
  
  get 'static_pages/help'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  resources :cards, only: [:show]
  resources :categories, only: [:index,:show]
  resources :productions, only: [:index,:show]
  resources :card_products, only: [:create,:update,:destroy]
  namespace :admin do 
    resources :users
    resources :productions
    get '/home', to: 'static_pages#home'
  end  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
