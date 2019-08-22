class Item < ApplicationRecord
#attr_accessible  :price, :name, :real, :weight, :description
validates :price, { numericality: {greater_than: 0, allow_nill: true} }
validates :name, :description, presence: true
end
