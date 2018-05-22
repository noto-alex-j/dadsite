class OrdersController < ApplicationController

  def index
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    byebug
    if @order.save
      flash[:notice] = "Order saved successfully."
      redirect_to admin_orders_path
    else
      flash[:notice] = "Order could not be saved."
      render :new
    end
  end

  private
  def order_params
    params.require(:order).permit(:name, :company, :address, :phone, :needed_by, item_ids: [])
  end
end
