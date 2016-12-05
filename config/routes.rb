Rails.application.routes.draw do
  devise_for :users

  resources :posts do
    member do
     patch 'done'
     patch 'not_done'
     post 'search'
     get 'search_index'
    end
  end
  resources :cities
  resources :comments
  resources :postulations
  resources :answers
  resources :sales do
    member do
      post 'earnings'
      get 'earnings_index'
    end
  end
  resources :users do
    member do
      get 'point_min'
      get 'point_max'
    end
  end
  resources :achievements
  root 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
