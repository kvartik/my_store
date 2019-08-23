class Item < ApplicationRecord
#attr_accessible  :price, :name, :real, :weight, :description
validates :price, { numericality: {greater_than: 0, allow_nill: true} }
validates :name, :description, presence: true

belongs_to :category

after_initialize { }# Item.new; Item.first

after_save { } #Item.save; Item.create
after_create {  category.inc(:items_count, 1) }
after_update { }
after_destroy { category.inc(:items_count, -1 }# item.destroy
end
