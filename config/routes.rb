Rails.application.routes.draw do
  resources :category_payments
  resources :payments
  resources :categories
  resources :users
  resources :welcome, only: [:index]
end
