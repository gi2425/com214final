class LandingController < ApplicationController
  skip_before_action :require_login
  
  def welcome
    redirect_to todos_path if logged_in?  # Changed from authenticated_root_path
  end

  def getstarted
    redirect_to welcome_landing_path unless logged_in?
  end
end