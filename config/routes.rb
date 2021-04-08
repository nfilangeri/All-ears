Rails.application.routes.draw do
  devise_for :users
  get '/user' => "searches#index", :as => :user_root
  root to: 'pages#home'
  resources :contacts, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :searches, only: [:index, :create, :show]
  resources :articles, only: [:show, :create] do
    resources :bookmarks, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
    resources :ratings, only: :create
  end
  resources :comments, only: :update
  resources :newspapers, only: [:index, :edit, :update]
  resources :ratings, only: :update
  resources :users, only: :show
  resources :topics, except: [:update, :edit] do
    resources :messages, only: [:show, :create, :update, :destroy]
  end
end
