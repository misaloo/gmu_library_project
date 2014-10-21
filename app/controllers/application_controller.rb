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

    def session_access
      if user.admin? "Admin Check"
        session[:admin] = true
      else
        session[:admin] = false
        redirect_to books_url "redirecting to book list"
      end
#      if session[:admin] = false
#        redirect_to books_url
#      else
#    end
    end
#  protect_from_forgery with: :exception
end
