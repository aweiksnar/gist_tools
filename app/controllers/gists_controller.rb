class GistsController < ApplicationController

  def index
    @gists = current_user.raw_gists
  end

  def show
    @gist = Gist.new(params[:id], current_user.github_access_token)
  end

  def display_gist
    redirect_to gist_path(params[:id])
  end

end
