Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :developers, only: [:create, :show, :new, :index] do
    resources :offers, only: [:create, :new]

  end
  resources :offers, only: [:show]
  resources :projects, only: [:create, :show, :new]
end
