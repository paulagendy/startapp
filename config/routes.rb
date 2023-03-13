Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
<<<<<<< HEAD

  resources :developer, only: [:create, :show, :new]
  resources :offers, only: [:create, :new]
  resources :projects, only: [:create, :new]

=======
  resources :developer, only: [:create, :show, :new, :index]
  resources :offers, only: [:show, :new]
  resources :projects, only: [:create, :show, :new]
>>>>>>> master
end
