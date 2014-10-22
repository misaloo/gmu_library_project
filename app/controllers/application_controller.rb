class ApplicationController < ActionController::Base
  before_action :authorize
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  helper_method :current_user

  def current_user
    User.find(session[:user_id])
  end

  protected

    def authorize
      logger.debug "authorizing for user id #{session[:user_id]}..."
      unless User.find_by(id: session[:user_id])
      	logger.debug "redirecting to login"
      	redirect_to login_url, notice: "Please log in"
      end
    end

    def is_user_admin
      if current_user.admin?
        session[:admin] = true
      else 
        session[:admin] = false
        redirect_to books_url
      end
    end

#    def is_user_admin
#      redirect_to books_url
#      unless current_user(:admin?) = true
#    end
#    def session_access
#      if session[:admin] = false
#        redirect_to books_url
#      else
#    end
  
#  protect_from_forgery with: :exception

end
