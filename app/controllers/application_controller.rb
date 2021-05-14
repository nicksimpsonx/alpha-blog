class ApplicationController < ActionController::Base

  # Methods available to both the views and the controllers
  helper_method :current_user, :logged_in?

  # (db optimisation) return if not nil or lookup
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    # convert method return to boolean
    !!current_user
  end

end
