class GistsController < ApplicationController

  def index
    @gists = current_user.raw_gists
  end

  def show
    if current_user
      @gist = Gist.new(params[:id], current_user.github_access_token)
    else
      @gist = Gist.new(params[:id], nil)
    end
  end

  def display_gist
    redirect_to gist_path(params[:id])
  end

end
