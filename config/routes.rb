Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  devise_for :users
  resources :owners
mount Monologue::Engine, at: '/' 
end
