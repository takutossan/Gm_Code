Rails.application.routes.draw do
  get 'messages/index'
  devise_for :users
  root to: 'codes#index'
  resources :codes do
    resources :comments, only: :create
  end
  resources :profiles, only: %i[show edit update]
    resources :mypages, only: :show 
    resources :rooms, only: %i[index new create destroy] do
    resources :messages, only: %i[index show create]
  end
end