Rails.application.routes.draw do
  get 'chart/show', as: "chart"
  get 'chart/index', as: "welcome"

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  devise_scope :user do
    authenticated :user do
      root 'diaries#index', as: :authenticated_root
    end

    unauthenticated do
      root 'chart#index', as: :unauthenticated_root
    end
  end  
  resources :diaries

  resources :posts do
    resources :comments, only: [:index, :new, :create]
  end
  resources :comments, only: [:show, :edit, :update, :destroy]
end
