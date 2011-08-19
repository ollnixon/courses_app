class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :current_user

  private

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def session_required
      redirect_to login_path, :notice => 'Please login' unless current_user
    end
end
