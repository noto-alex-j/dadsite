class ChangeUnitCostOnItems < ActiveRecord::Migration[5.1]
  def change
    change_column :items, :unit_cost, :float
  end
end
