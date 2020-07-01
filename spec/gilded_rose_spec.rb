# =>
# => This file is tests for rspec

require_relative 'helpers/helpers.rb'
require_relative '../app/lib/gilded_rose'

describe GildedRose do
  describe '#update_quality' do
    it 'does not change the name' do
      items = [Item.new('foo', 0, 0)]
      # => GildedRose.new(items).update_quality
      # => items[0].name.should == 'fixme'
      GildedRose.new(items).update_quality
      expect(items[0].name).not_to eq('fixme')
    end

    it 'test for when its sell_in date is passed' do
      expect(helper_test_update([Item.new('foo', 0, 12), Item.new('faa', 0, 0)])).to eq('foo, -1, 10, faa, -1, 0, ')
    end

    it 'test for Aged Brie' do
      expect(helper_test_update([Item.new('Aged Brie', 18, 32), Item.new('Aged Brie', 12, 50), Item.new('Aged Brie', 9, 24), Item.new('Aged Brie', 3, 8), Item.new('Aged Brie', 0, 27)])).to eq('Aged Brie, 17, 33, Aged Brie, 11, 50, Aged Brie, 8, 26, Aged Brie, 2, 11, Aged Brie, -1, 30, ')
    end

    it 'test for Sulfas' do
      expect(helper_test_update([Item.new('Sulfuras', 18, 32), Item.new('Sulfuras', 12, 50), Item.new('Sulfuras', 0, 24)])).to eq('Sulfuras, 17, 80, Sulfuras, 11, 80, Sulfuras, -1, 80, ')
    end

    it 'test for backstage passes' do
      expect(helper_test_update([Item.new('Backstage passes', 18, 32), Item.new('Backstage passes', 12, 50), Item.new('Backstage passes', 9, 24), Item.new('Backstage passes', 3, 8), Item.new('Backstage passes', 0, 24)])).to eq('Backstage passes, 17, 33, Backstage passes, 11, 50, Backstage passes, 8, 26, Backstage passes, 2, 11, Backstage passes, -1, 0, ')
    end

    it 'test for Conjured items' do
      expect(helper_test_update([Item.new('Conjured foo', 13, 26), Item.new('Conjured doe', 0, 12)])).to eq('Conjured foo, 12, 24, Conjured doe, -1, 8, ')
    end
  end
end
