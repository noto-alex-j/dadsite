class Order < ApplicationRecord
  validates :name, :address, :phone, presence: true
end
