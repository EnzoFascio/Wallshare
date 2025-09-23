Rails.application.routes.draw do
  resources :posts
  resources :users

  # Página inicial
  root "home#index"

  # Páginas estáticas
  get "/login", to: "pages#login"
  get "/register", to: "pages#register"
end
