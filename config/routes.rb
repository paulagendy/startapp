Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :developer, only: [:create, :index, :show, :new]
  resources :offers, only: [:show, :index, :new]
  resources :developer, only: [:create, :index, :show, :new]
  resources :projects, only: [:show]
  # Defines the root path route ("/")
  # root "articles#index"


  resources :projects, only: [:index, :show, :new, :create] do
  end

  resources :developer, only: [:create, :show, :new]
  resources :offers, only: [:show, :new]
  resources :projects, only: [:create, :show, :new]

end
