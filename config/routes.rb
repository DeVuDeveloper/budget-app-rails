Rails.application.routes.draw do
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end

  authenticated :user do
    root 'categories#index', as: :authenticated_root
  end

  unauthenticated do
    root "welcome#index"
  end

  devise_for :users

  get 'categories/most_recent_list'
  get 'categories/most_ancient_list'

  resources :users, only: [:index, :show] do
    resources :categories, only: [:index, :new, :create, :destroy] do
      resources :payments, only: [:index, :show, :new, :create]
      resources :category_payments, only: [:create]
      resources :welcome, only: [:index]
    end
  end
 end
