Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :developers, only: [:create, :show, :new, :index] do
    resources :offers, only: [:create, :new]
  end
  resources :projects, only: [:create, :show, :new]
  resources :chatrooms, only: [:show, :create,] do
    resources :messages, only: :create
  end
end
