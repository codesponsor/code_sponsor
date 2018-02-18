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

  resources :clicks
  resources :impressions
  resources :sponsorships
  resources :campaigns

  authenticated :user do
    root to: "react_app#index"
  end

  root to: "home#index"
end
