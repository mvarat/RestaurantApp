class PartiesController < ApplicationController

  include SessionsHelper

  #index
  def index
    @user = current_user
    @parties = Party.where(user_id: @user).where(is_paid: false).where(active: true).order("created_at DESC")
  end

  #index
  def all
    @user = current_user
    @parties = Party.where(user_id: @user).where(active: true).order("created_at DESC")
  end

  #new
  def new
    @user = current_user
    @party = Party.new
  end

  #create
  def create
    @user = current_user
    new_party = Party.create party_params.merge user_id: current_user.id
    redirect_to party_orders_path(new_party)
  end

  def edit
    @user = current_user
    @party = Party.find params[:id]
  end

  def show
    @user = current_user
    @party = Party.find params[:id]
    @orders = Order.where(party_id: @party.id)
    @subtotal = 0
    @orders.each do |order|
      @subtotal = order.item.price + @subtotal
      @tax = @subtotal * 0.08875
      @total = @subtotal + @tax
      @fifteen = @total * 0.15
      @twenty = @total * 0.2
      @twentyfive = @total * 0.25
    end
  end

  #          PATCH  /travelers/:id(.:format)         travelers#update
  #          PUT    /travelers/:id(.:format)         travelers#update
  def update
    @user = current_user
    party = Party.find params[:id]
    party.update party_params
    redirect_to party_path party.id
  end

  def inactive
    @user = current_user
    party = Party.find params[:id]
    party.update_attributes(active: false)
    redirect_to parties_path
  end

  private

    def party_params
      params.require(:party).permit(:num_of_guests, :table_num, :is_paid)
    end

end
