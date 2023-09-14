Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "welcome#index"
  resources :collections, only: [:index, :show]
  get "/cards/random", to: "cards#random_card"
  get "/cards/:id", to: "cards#show"
  get "/coming_soon", to: "static_pages#coming_soon", as: :coming_soon
end
