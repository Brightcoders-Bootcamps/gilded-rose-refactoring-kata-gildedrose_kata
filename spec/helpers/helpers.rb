# =>
# => This file is utility functions for execute tests

def helper_test_update(register_items)
  items = GildedRose.new(register_items)
  return_string = ''
  items.update_quality
  items.items.each { |item| return_string += item.to_s + ', ' }
  return_string
end
