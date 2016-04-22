class OrdersController < ApplicationController

  include SessionsHelper

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

  def show
    @party = Party.find params[:party_id]
    @order = Order.find params[:id]
    @item = Item.where id: params[:item_id]

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
