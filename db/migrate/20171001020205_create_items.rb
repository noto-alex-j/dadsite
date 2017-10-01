class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.integer :unit_quantity
      t.string :unit_cost
      t.boolean :available

      t.timestamps
    end
  end
end
