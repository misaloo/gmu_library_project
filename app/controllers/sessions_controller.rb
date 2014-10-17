class SessionsController < ApplicationController
  skip_before_action :authorize
  
  def new
  end

  def create
  	user = User.find_by(name: params[:name])
  	if user and user.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_to books_url
        if user.admin?
          session[:admin] = true
        else
          session[:admin] = false
        end
  	else
    	redirect_to login_url, alert: "Invalid user/password combination"
    end	
  end

  def destroy
    session[:user_id] = nil
    session[:admin] = false
    redirect_to login_url, notice: "Logged out"
  end
end
