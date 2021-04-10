Rails.application.routes.draw do
  get 'productions/index'
  get 'productions/show'
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  namespace :admin do 
    resources :users
  end  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
