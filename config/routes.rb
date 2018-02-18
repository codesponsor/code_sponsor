Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users, path: "auth", path_names: {
    sign_in: "login",
    sign_out: "logout",
    password: "secret",
    confirmation: "verification",
    unlock: "unblock",
    registration: "register",
    sign_up: "cmon_let_me_in"
  }

  root to: "home#index"

  resources :clicks
  resources :impressions
  resources :sponsorships
  resources :campaigns

  get "/styleguide", to: "react_app#styleguide", as: :styleguide

  get "*path", to: "react_app#index", as: :react_app
end
