class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :rate_limit, :rate_limit_reset

  def rate_limit
    if user_signed_in?
      url = "https://api.github.com/rate_limit?access_token=#{current_user.github_access_token}"
    else
      url = "https://api.github.com/rate_limit"
    end
    @rate_limit = JSON.parse(open(url).read)["resources"]["core"]
    @rate_limit["remaining"]
  end

  def rate_limit_reset
    Time.at(@rate_limit["reset"]).localtime.strftime("%l:%M%P")
  end
end
