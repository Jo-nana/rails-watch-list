Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'lists', to: 'lists#index'
  # Display the lists
  root to: 'lists#index'
  # Display what's inside a list
  resources :lists, only: [ :show, :new, :create ] do
    # create and delete new bookmarks
    resources :bookmarks, only: [:new, :create, :destroy ]
  end
end
