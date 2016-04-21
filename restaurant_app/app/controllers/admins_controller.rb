class AdminsController < ApplicationController

  include SessionsHelper

  before_action :authenticate!, only: [:profile]

  def index
    @items = Item.find(all)
  end



end
