class GistsController < ApplicationController

  def index
    @gists = current_user.raw_gists
  end

  def show
    @gist = Gist.new(params[:id], current_user.github_access_token)
    @raw_data = Gist.new(params[:id], current_user.github_access_token).raw_data
  end

  def display_gist
    redirect_to gist_path(params[:id])
  end

end
