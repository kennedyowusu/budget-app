Rails.application.routes.draw do
  get '/splash', to: 'splash#index'

  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'groups#index', as: :authenticated_root
    end

    unauthenticated do
      root "splash#index", as: :unauthenticated_root
    end
  end

  resources :users, only: [:index, :show, :new] do
    resources :groups, only: [:new, :create, :show, :index, :destroy]
    resources :expenses, only: [:new, :create, :index, :show, :destroy]
  end
end
