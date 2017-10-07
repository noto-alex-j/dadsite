class Item < ApplicationRecord
  validates :name, :unit_quantity, :unit_cost, presence: true
end
