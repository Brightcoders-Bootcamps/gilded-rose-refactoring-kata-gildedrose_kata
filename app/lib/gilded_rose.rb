# => This class update the value of store 

require_relative 'item'
require_relative 'utility_functions'
class GildedRose
  attr_reader :items

  def initialize(items)
    @items = items
  end

  def update_quality()
    @items.each do |item|
      item.sell_in -= 1
      if item.brie? || item.backstage?
        update_brie_backstage(item)
      elsif item.sulfuras?
        update_sulfuras(item)
      else
        update_item_conjured(item)
      end
    end
  end
end
