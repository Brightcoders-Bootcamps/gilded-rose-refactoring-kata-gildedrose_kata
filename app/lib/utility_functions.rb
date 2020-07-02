def update_brie_backstage(item)
  if item.sell_in > 10
    item.quality += 1
  elsif (6..10).include?(item.sell_in)
    item.quality += 2
  elsif item.sell_in < 6
    item.quality += 3
  end
  item.quality = (item.quality > 50) ? 50 : (((item.sell_in < 0) && item.backstage?) ? 0: item.quality)
end

def update_sulfuras(item)
  item.quality = 80
end

def update_item_conjured(item)
  item.quality -= item.conjured? ? ((item.sell_in < 0) ? 4 : 2) : ((item.sell_in < 0) ? 2 : 1)
  item.quality = (item.quality < 0) ? 0 : item.quality
end
