Rails.application.routes.draw do
  root 'categories#index'
  resources :users, only: [:index, :show] do
  resources :categories, only: [:index, :new, :create, :destroy] do
    resources :category_payments
    resources :payments
    resources :welcome, only: [:index]
  end
 end
end
