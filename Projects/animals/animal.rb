class Animal

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.phyla
    ["lion", "Meerkat", "Warthog"]
  end

  def eat(food)
    "#{@name} eats a #{food}"
  end
end
