Rails.application.routes.draw do
  devise_for :users
  resources :articles
  delete '/users/sign_out' => 'devise/sessions#destroy'
  root 'articles#index'
  resources :sample_articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
