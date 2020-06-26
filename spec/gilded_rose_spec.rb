# => require 'rspec'
# => require 'test/unit/assertions'
require_relative '../app/lib/gilded_rose'

describe GildedRose do

  describe "#update_quality" do
    it "does not change the name" do
      items = [Item.new("foo", 0, 0)]
      GildedRose.new(items).update_quality()
      items[0].name.should == "fixme"
    end
    it "test item Aged Brie" do 
      items = [Item.new("Aged Brie", 14, 10), Item.new("Aged Brie", 9, 7)]
      expect(GildedRose.new(items).update_quality().each{|item| item.to_s()}).to eq("Aged Brie, 13, 11")
    end
  end

end
