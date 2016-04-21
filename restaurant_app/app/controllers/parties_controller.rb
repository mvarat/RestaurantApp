class PartiesController < ApplicationController

  include SessionsHelper

  #index
  def index
    @user = current_user
    @parties = Party.where(user_id: @user).order("created_at DESC")

  end

  #new
  def new
    @party = Party.new
  end

  #create
  def create
    new_party = Party.create party_params.merge user_id: current_user.id
    redirect_to parties_path
  end

  def edit
    @party = Party.find params[:id]
  end

  def show
    @party = Party.find params[:id]
  end

  #          PATCH  /travelers/:id(.:format)         travelers#update
  #          PUT    /travelers/:id(.:format)         travelers#update
  def update
    party = Party.find params[:id]
    party.update party_params
    redirect_to party_path party.id
  end

   #destroy
  def destroy
    party = Party.find params[:id]
    party.destroy
    redirect_to profile_path
  end

  private

    def party_params
      params.require(:party).permit(:num_of_guests, :table_num, :is_paid)
    end

end
