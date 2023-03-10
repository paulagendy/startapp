Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :developer, only: [:create, :show, :new]
  resources :offers, only: [:create, :new]
  resources :projects, only: [:create, :new]

end
