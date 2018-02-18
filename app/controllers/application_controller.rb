class ApplicationController < ActionController::Base
  include ::Pundit

  protected

    def after_sign_in_path_for(resource)
      request.env['omniauth.origin'] || stored_location_for(resource) || react_app_path
    end
end
