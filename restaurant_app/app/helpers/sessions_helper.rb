module SessionsHelper

  def authenticate!
    redirect_to log_in_path unless current_user
  end

  def current_user
    if session[:server_id]
      @current_user = Server.find session[:server_id]
    end
  end

end
