Rails.application.routes.draw do
  devise_for :users

  resources :posts do
   post 'done', on: :member
   post 'not_done', on: :member
  end

  resources :cities
  resources :comments
  resources :postulations
  resources :answers
  resources :sales
  resources :users
  resources :achievements


  root 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
