class ApplicationController < ActionController::Base
  before_action :authorize
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  protected

    def authorize
      logger.debug "authorizing for user id #{session[:user_id]}..."
      unless User.find_by(id: session[:user_id])
      	logger.debug "rediecting to login"
      	redirect_to login_url, notice: "Please log in"
      end
    end
#  protect_from_forgery with: :exception
end
