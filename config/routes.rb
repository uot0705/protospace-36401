Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  get 'prototypes/index'
  resources :users, only: :show
  resources :prototypes, only: [:new, :create, :show, :update, :edit, :destroy] do
    resources :comments, only: :create
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
