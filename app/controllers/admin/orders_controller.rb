class Admin::OrdersController < ApplicationController

  def index
    @orders = Order.all.includes(:items)
  end

end
