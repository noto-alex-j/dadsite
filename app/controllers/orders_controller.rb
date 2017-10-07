class OrdersController < ApplicationController

  def index
  end

  def new
    # flash[:notice] = "Notice"
    @order = Order.new
  end

  def create
    byebug
  end

  private
  def order_params
    params.require(:order).permit(:name, :company, :address, :phone, :needed_by)
  end
end
