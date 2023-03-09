Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :projects, only: [:index, :show, :new, :create] do
  end
=======
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :developer, only: [:create, :show, :new]
  resources :offers, only: [:show, :new]
  resources :projects, only: [:create, :show, :new]
  # Defines the root path route ("/")
  # root "articles#index"

end
