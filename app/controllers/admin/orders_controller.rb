class Admin::OrdersController < AdminController

  def index
    @orders = Order.all.includes(:items)
  end

end
