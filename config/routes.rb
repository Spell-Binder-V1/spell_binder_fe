Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "welcome#index"
  get "/search", to: "search#search"
  resources :collections, only: [:index, :show]
  resources :decks do
    member do
      post 'add_to_mainboard/:card_id', to: 'deck#add_to_mainboard', as: :add_to_mainboard
    end
  end
  get "/cards/random", to: "cards#random_card"
  get "/cards/:id", to: "cards#show", as: :card
  get "/coming_soon", to: "static_pages#coming_soon", as: :coming_soon

  get "/login", to: "sessions#login_form"
  post "/login", to: "sessions#login"

  get '/auth/:provider/callback' => 'sessions#omniauth'
  get "/register", to: "users#new"
  post "/register", to: "users#create"
end
