Rails.application.routes.draw do
  devise_for :users
  root to: 'codes#index'
  resources :codes do
    resources :comments, only: :create
  end
    resources :mypages, only: :show
end
