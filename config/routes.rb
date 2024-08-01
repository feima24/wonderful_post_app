Rails.application.routes.draw do
  root to: 'articles#index'
  get '/mypage', to: 'mypage#show'
  devise_for :users
  resources :mypage, only: [:new, :create, :edit, :update, :destroy]
  resources :articles
end
