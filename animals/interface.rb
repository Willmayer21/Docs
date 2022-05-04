require_relative 'animal'
require_relative 'lion'
require_relative 'meerkat'
require_relative 'warthog'

animal = Animal.new("Simba")

animal.name

lion = Lion.new("Simba")

meerkat = Meerkat.new("Timon")

warthog = Warthog.new("Pumbaa")

nala = Lion.new("Nala")

# p lion.talk
# p meerkat.talk
# p warthog.talk

array = [lion, meerkat, warthog, nala]

array.each do |animal|
  animal.talk
end

Animal.phyla

p lion.eat("steack")
p meerkat.eat("snail")
p warthog.eat("butterfly")



