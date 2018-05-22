class Admin::ItemsController < AdminController

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:notice] = "Item saved successfully."
      redirect_to admin_items_path
    else
      flash[:notice] = "Item could not be saved."
      render :new
    end
  end

  private
  def item_params
    params.require(:item).permit(:name, :description, :unit_quantity, :unit_cost, :available)
  end


end