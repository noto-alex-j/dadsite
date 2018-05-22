class RemoveColumnsFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :name
    remove_column :orders, :company
    remove_column :orders, :address
    remove_column :orders, :phone
  end
end
