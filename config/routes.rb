Rails.application.routes.draw do
  devise_for :users

  resources :posts do
    member do
     post 'done'
     post 'not_done'
     post 'search'
     get 'search_index'

    end
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
