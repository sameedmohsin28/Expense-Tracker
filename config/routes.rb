Rails.application.routes.draw do
  devise_for :users
  # get 'expense/index'
  # get 'expense/new'
  # get 'expense/create'
  # get 'category/index'
  # get 'category/new'
  # get 'category/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#splash"

  resources :home, only: [:splash]
  resources :categories, only: [:index, :new, :create] do
    resources :expenses, only: [:index, :new, :create]
  end
end
