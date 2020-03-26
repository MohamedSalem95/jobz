Rails.application.routes.draw do
  
  
  
  resources :posts do
  	resources :comments
  end
  
  resources :tasks do
  	resources :images
  end
  devise_for :users
  
  root to: 'home#index', as: 'home'

  get 'profile/:id', to: 'home#profile', as: 'profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
