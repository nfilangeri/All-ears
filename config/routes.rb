Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles, only: [:index, :show, :create, :destroy] do
    resources :comments, only: [:create, :destroy]
    resources :ratings, only: :create
  end
  resources :comments, only: :update
  resources :newspapers, only: [:index, :edit, :update]
  resources :ratings, only: :update
  resources :users, only: :show
  resources :topics, except: :edit do
    resources :messages, only: [:show, :create, :update, :destroy]
  end
end
