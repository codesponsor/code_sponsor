Rails.application.routes.draw do
  devise_for :admin_users, { class_name: "User" }.merge(ActiveAdmin::Devise.config)
  ActiveAdmin.routes(self)

  devise_for :users

  authenticated :user do
    root to: "react_app#index"
  end

  root to: "home#index"
end
