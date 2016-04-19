class SessionsController < ApplicationController

  # take the username and password and confirm this is a user on the site
  def create
    #get the fields from the form
    username = params[:username]
    password = params[:password]
    server = Server.find_by username: username

    #user.authenticate becuase has_secure_password was included in the model
    if server && server.authenticate( password )
      session[:server_id] = server.id
      # should redirect to servers profile page
      redirect_to log_in_path
    else
      redirect_to log_in_path
    end
  end

  def destroy
    session[:server_id] = nil
    redirect_to log_in_path
  end

end
