class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end

  def authorize 
    if !current_user || !current_user.admin
      flash[:alert] = "You can not vist that page with out signing in/up first."
      redirect_to '/signin'
    end
  end
  
end
