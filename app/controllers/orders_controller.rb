class OrdersController < ApplicationController

  include SessionsHelper

  def all
    @orders = Order.where(is_complete: false)
  end

  def index
    @items = Item.all
    @party = Party.find params[:party_id]
    @orders = Order.where(party_id: @party.id)
  end

  def create
    new_order = Order.create order_params.merge party_id: params[:party_id]
    redirect_to party_orders_path
  end

  def new
    @party = Party.find params[:party_id]
    @order = Order.new
    @items = Item.all
  end

  def is_complete
    order = Order.find params[:id]
    order.update_attributes(is_complete: true)
    redirect_to all_orders_path
  end


  def destroy
    order = Order.find params[:id]
    order.destroy
    redirect_to party_orders_path
  end

  private

  def order_params
    params.require(:order).permit(:notes, :item_id)
  end

end
