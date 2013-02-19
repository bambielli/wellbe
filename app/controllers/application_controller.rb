class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def current_profile
    @current_profile ||= Profile.find(session[:profile_id]) if session[:profile_id]
  end

  helper_method :current_profile
end
