class ReactAppController < ApplicationController
  before_action :authenticate_user!
  layout "react_app"

  def index
    @token = current_user.token
  end

  def styleguide
  end
end
