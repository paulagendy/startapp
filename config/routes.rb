Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :developer, only: [:create, :show, :new]
  resources :offers, only: [:show, :new]
  resources :projects, only: [:create, :show, :new]
  resources :home, only: [:show]

end
