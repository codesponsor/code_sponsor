Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  post "/graphql", to: "graphql#execute"
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

  get "/styleguide", to: "react_app#styleguide", as: :styleguide

  authenticated :user do
    root to: "react_app#index"
  end

  root to: "home#index"

  get "*path", to: "react_app#index", as: :react_app
end
