Rails.application.routes.draw do
  get 'welcome/root'
  resources :events
  resources :users
  resources :sports

  get "/", to: "welcome#home", as: "landing"
  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy", as: "logout"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
