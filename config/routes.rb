Rails.application.routes.draw do
  root 'categories#index'

  get 'categories/most_recent_list'
  get 'categories/most_ancient_list'
  
  resources :users, only: [:index, :show] do
  resources :categories, only: [:index, :new, :create, :destroy] do
    resources :category_payments
    resources :payments
    resources :welcome, only: [:index]
  end
 end
end
