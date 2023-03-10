Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :developer, only: [:create, :show, :new]
  resources :offers, only: [:create, :new]
  resources :projects, only: [:create, :new]

end
