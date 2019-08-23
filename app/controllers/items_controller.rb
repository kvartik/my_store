class ItemsController < ApplicationController

def add_index
@items = Item.all
render text: @items.map { |i| "#{i.name}: #{i.price}"}.join("<br/>")

end

end
