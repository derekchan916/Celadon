Rails.application.routes.draw do
  root to: 'static_pages#root'

  namespace :api, defaults: { format: :json } do
    resource :session, only: [:new, :show, :create, :destroy]
    resources :users, only: [:index, :new, :create, :show, :update] do
      post :place_order, on: :member
    end

    resources :products, only: [:index, :show]
    resources :reviews, only: [:create, :destroy]
    resources :cart_items, only: [:create, :destroy]
    resources :types, only: [:index, :show]
  end

  get "/auth/:provider/callback", to: "api/sessions#omniauth"
end
