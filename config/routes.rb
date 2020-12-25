Rails.application.routes.draw do
  devise_for :users
  root "reservation#index"
  resources :reservations, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :users, only: [:edit, :update]
end
