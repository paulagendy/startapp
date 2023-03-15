Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :developers, only: [:create, :show, :new, :index] do
    resources :offers, only: [:create, :new]
  end
<<<<<<< HEAD

  resources :projects, only: [:create, :show, :new]
  resources :chatrooms, only: [:show, :create, :new] do
=======
  resources :projects, only: [:create, :show, :new] do
    resources :offers, only: [:index]
  end
  resources :chatrooms, only: [:show, :create] do
>>>>>>> master
    resources :messages, only: :create
  end
end
