Rails.application.routes.draw do
  resources :posts
  resources :users

  # Página inicial
  root "home#index"

  # Páginas estáticas
  #get "/login", to: redirect("/users/sign_in")
  #get "/register", to: redirect("/users/register")

  devise_for :users
end
