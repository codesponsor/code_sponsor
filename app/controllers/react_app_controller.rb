class ReactAppController < ApplicationController
  def index
    @props = {
      name: "Stranger"
    }
  end
end
