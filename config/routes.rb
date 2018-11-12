Rails.application.routes.draw do
  get 'welcome/root'
  resources :events
  resources :users
  resources :sports
  get "/", to: "welcome#root", as: "homepage"
  get "/login", to: "users#login_form", as: "login"
  post "/login", to: "users#login"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
