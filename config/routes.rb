Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :projects, only: [:index, :show, :new, :create] do
  end

  resources :developer, only: [:create, :show, :new]
  resources :offers, only: [:show, :new]
  resources :projects, only: [:create, :show, :new]
end
