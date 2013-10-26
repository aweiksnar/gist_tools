class GistsController < ApplicationController

  def index
    @gists = current_user.raw_gists
  end

  def show
    @gist = Gist.new(params[:id]).raw_data
  end

end
