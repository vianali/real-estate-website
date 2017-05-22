Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  devise_for :users
  resources :owners
mount Monologue::Engine, at: '/' 
get 'monologue/posts' => 'monologue/posts#index'

end
