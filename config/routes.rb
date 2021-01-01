Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'users#index'
  resources :reservations, only: [:new, :create, :edit, :update, :destroy, :show]
  resources :users, only: [:index]
end
