Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :developers, only: [:create, :show, :new, :index] do
    resources :offers, only: [:create, :new]
  end

  resources :projects, only: [:create, :show, :new] do
    resources :offers, only: [:index]
  end

  resources :offers, only: [:update]
  
  resources :chatrooms, only: [:show, :create] do
    resources :messages, only: :create
  end
  
  get "my_dev_profile", to: "developers#my_dev_profile", as: :my_dev_profile
end
