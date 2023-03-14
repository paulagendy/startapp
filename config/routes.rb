Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :developers, only: [:create, :show, :new, :index]
  resources :offers, only: [:show, :create, :new]
  resources :projects, only: [:create, :show, :new]
  resources :chatrooms, only: [:show, :create] do
    resources :messages, only: :create
  end
end
