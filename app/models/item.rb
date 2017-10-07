class Item < ApplicationRecord
  validates :name, :unit_quantity, :unit_cost, presence: true
  has_many :order_items
  has_many :orders, through: :order_items
end
