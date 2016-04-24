class ItemsController < ApplicationController

  include SessionsHelper

  def index
    @user = current_user
    @items = Item.where(active: true)
    @appetizers = @items.where(category: "Appetizer")
    @entrees = @items.where(category: "Entree")
    @sides = @items.where(category: "Side")
    @desserts = @items.where(category: "Dessert")
    @beverages = @items.where(category: "Beverage")
  end

  def new
    @user = current_user
    @item = Item.new
  end

  #create
  def create
    @user = current_user
    new_item = Item.create item_params
    redirect_to items_path
  end

  def edit
    @user = current_user
    @item = Item.find params[:id]
  end

  def update
    @user = current_user
    item = Item.find params[:id]
    item.update item_params
    redirect_to items_path
  end

  def inactive
    @user = current_user
    item = Item.find params[:id]
    item.update_attributes(active: false)
    redirect_to items_path
  end


  private

  def item_params
    params.require(:item).permit(:name, :category, :price)
  end

end
