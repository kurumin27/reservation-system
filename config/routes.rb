Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { sessions: 'users/sessions' }
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  root 'users#index'
  resources :reservations, only: [:new, :create, :edit, :update, :destroy, :show]
  resources :users, only: [:index]
end
