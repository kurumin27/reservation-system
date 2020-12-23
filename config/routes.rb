Rails.application.routes.draw do
  get 'product/index'
  get 'product/new'
  get 'product/create'
  get 'product/edit'
  get 'product/update'
  get 'product/destroy'
  get 'product/show'
  get 'reservation/index'
  get 'reservation/new'
  get 'reservation/create'
  get 'reservation/edit'
  get 'reservation/update'
  get 'reservation/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
