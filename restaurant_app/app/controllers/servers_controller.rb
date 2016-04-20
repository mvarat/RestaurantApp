class ServersController < ApplicationController

  include SessionsHelper

  before_action :authenticate!, only: [:profile]

  def new
    @server = Server.new
  end

  def create
    @server = Server.create server_params
    redirect_to log_in_path
  end

  def log_in
  end

  #def profile
  #  @user = current_user
  #  @tasks = Task.where(user_id: @user)
  #end

  private

  def server_params
    params.require(:server).permit(:name, :username, :password, :password_confirmation)
  end


end
