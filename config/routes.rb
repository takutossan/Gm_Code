Rails.application.routes.draw do
  devise_for :users
  root to: 'codes#index'
  resources :codes 
end
