Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resources :posts, only: [:index, :show, :create, :update, :destroy]
  end

  root to: "root#index"
end
