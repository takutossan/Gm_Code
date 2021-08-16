Rails.application.routes.draw do
  devise_for :users
  root to: 'codes#index'
  resources :codes, only: [:index, :new, :create, :show ,:edit]
 end
