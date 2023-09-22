Rails.application.routes.draw do
  root "welcome#index"
  get "/search", to: "search#search"
  resources :collections, only: [:index, :show]
  resources :decks
  post 'add_to_mainboard/:card_id', to: 'cards#add_to_mainboard', as: :add_to_mainboard
  get "/cards/random", to: "cards#random_card"
  get "/cards/:id", to: "cards#show", as: :card
  get "/coming_soon", to: "static_pages#coming_soon", as: :coming_soon

  get "/login", to: "sessions#login_form"
  post "/login", to: "sessions#login"
  get "/logout", to: "sessions#logout_omniauth"

  get '/auth/:provider/callback' => 'sessions#omniauth'
  get "/register", to: "users#new"
  post "/register", to: "users#create"
end
