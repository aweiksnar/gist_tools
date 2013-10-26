class GistsController < ApplicationController

  def index
    @gists = current_user.raw_gists
  end

end
