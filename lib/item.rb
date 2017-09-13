class Item
  @@list = []
  attr_reader :id
  attr_accessor :name

  def initialize(name)
    @name = name
    @id = @@list.length + 1
  end

  def self.all()
    @@list
  end

  def save()
    @@list.push(self)
  end

  def self.clear()
    @@list = []
  end

end


##### without class variables #####
##### goes inside ITEM class ######
# attr_accessor :name
#
# def initialize(name)
#   @name = name
# end
#
# def self.all()
# end
#
# def self.find(name)
# end

  # item1 = Item.new('tacos')
  # item2 = Item.new('pizza')
  # item3 = Item.new('BBQ')
