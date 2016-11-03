Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :cities
  resources :comments
  resources :postulations
  resources :answers
  resources :sales
  resources :users
  resources :achievements
	resources :categories
  root 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
