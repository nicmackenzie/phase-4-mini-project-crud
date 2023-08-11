Rails.application.routes.draw do
  get 'spices/index'
  get 'spices/show'
  get 'spices/create'
  get 'spices/update'
  get 'spices/destroy'
  resources :spices, only: [:index, :create, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
