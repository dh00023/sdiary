Rails.application.routes.draw do
  resources :posts
  resources :diaries
  root "diaries#index"
end
