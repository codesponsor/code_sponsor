class ReactAppController < ApplicationController
  before_action :authenticate_user!
  layout "react_app"

  def index
  end

  def styleguide
  end
end
