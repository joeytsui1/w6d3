Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:index, :show, :create, :update, :destroy]
  resources :artworks, only: [:show, :create, :update, :destroy]
  resources :artwork_shares, only: [:create, :destroy]

  resources :users do 
    resources :artworks, only: [:index]
  end

  # resources :users do
  #   resources :artworks, only: :index 
  # end
  # resources :users, :except [:new, :edit]

    # get 'users', to: 'users#index'
    # post 'users', to: 'users#create'
    # get 'users/:id', to: 'users#show'
    # patch '/users/:id', to: 'users#update'
    # put '/users/:id', to: 'users#update'
    # delete '/users/:id', to: 'users#destroy'
    # get 'users/new' to: 'users#new'
    # patch 'users/:id', to: 'user#edit'
end
