Rails.application.routes.draw do
  root to: 'static_pages#root'

  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]

  namespace :api, defaults: { format: :json } do
    resources :products, only: [:index, :show]
    resources :users, only: [:index, :show, :update]
    resources :reviews, only: [:create, :destroy] do
    # post :show_by_product, on: :member
    # post :show_by_user, on: :member
    end
  end
end
