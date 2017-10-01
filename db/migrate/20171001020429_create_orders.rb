class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :company
      t.string :address
      t.string :phone
      t.datetime :needed_by
      t.boolean :paid
      t.boolean :completed
      t.boolean :flagged

      t.timestamps
    end
  end
end
