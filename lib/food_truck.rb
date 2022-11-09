class FoodTruck
  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def stock(item, qty = 0)
    @inventory[item] ||= 0
    @inventory[item] += qty
  end

  def check_stock(item)
    return 0 if @inventory[item].nil?
    @inventory[item]
  end
end
