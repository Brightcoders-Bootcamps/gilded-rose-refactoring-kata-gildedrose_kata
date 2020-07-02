# => Defined new class for use item class
require 'delegate'

class Item < SimpleDelegator
	def brie?
		(@name.downcase.scan('aged brie').length == 0 ) ? nil : true
	end

  def backstage?
		(@name.downcase.scan('backstage passes').length == 0 ) ? nil : true
  end

  def conjured?
		(@name.downcase.scan('conjured').length == 0 ) ? nil : true
  end

  def sulfuras?
    (@name.downcase.scan('sulfuras').length == 0 ) ? nil : true
  end
end