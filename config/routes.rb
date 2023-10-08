Rails.application.routes.draw do
  # get 'events/new'
  # get 'events/create'
  # get 'events/index'
  # get 'events/show'
  # get 'events/new'
  # get 'events/create'
  # get 'events/edit'
  # get 'events/update'
  # get 'events/destroy'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "events#index"
  resources :events, only: [:index, :show, :new, :create] do
    member do
      post :book
    end
  end
end
