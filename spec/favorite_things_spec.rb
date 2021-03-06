require ('rspec')
require ('item')
require ('pry')

describe("Item") do
  before() do
    Item.clear()
  end

  # describe(".all") do
  #   it("is empty at first") do
  #     expect(Item.all()).to(eq([]))
  #   end
  # end
  #
  # describe("#save") do
  #   it ("saves an item to a list of items") do
  #     item = Item.new("tacos")
  #     item.save()
  #     expect(Item.all()).to(eq([item]))
  #   end
  # end
  #
  # describe(".clear") do
  #   it('clears all items from the list') do
  #     ourvariable = Item.new('tacos')
  #     ourvariable.save()
  #     Item.clear()
  #     expect(Item.all()).to(eq([]))
  #   end
  # end
  #
  # describe("#attr_accessor") do
  #   it('tests name method on object') do
  #     item = Item.new("pizza")
  #     expect(item.name).to(eq("pizza"))
  #   end
  #
  #   it('writes a name to the item object') do
  #     item = Item.new("pizza")
  #     item.name = "tacos"
  #     expect(item.name()).to(eq("tacos"))
  #   end
  # end
  #
  # describe('#attr_reader') do
  #   it('reads id number') do
  #     item3 = Item.new("pizza")
  #     item3.save()
  #     expect(item3.id()).to(eq(1))
  #   end
  # end
  #
  # describe("#id") do
  #   it ("increments an id by 1 each time a new item is added") do
  #     item = Item.new("tacos")
  #     item.save()
  #     item2 = Item.new("pizza")
  #     item.save()
  #     expect(item.id()).to(eq(1))
  #     expect(item2.id()).to(eq(2))
  #   end
  # end

  describe(".find") do
    it ("finds an item based on its id") do
      item = Item.new("tacos", "1")
      item.save()
      item2 = Item.new("pizza", "2")
      item2.save()
      expect(Item.find(1)).to(eq(item))
      expect(Item.find(2)).to(eq(item2))
    end
  end

  describe(".sort") do
    it ("sorts items based on rank") do
    item = Item.new("tacos", "3")
    item.save()
    item2 = Item.new("hot dogs", "5")
    item.save()
    expect(Item.sort()).to(eq([item, item2]))
  end
end


end #describe item
