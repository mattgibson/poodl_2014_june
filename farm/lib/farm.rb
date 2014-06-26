using Article

class Farm

  attr_accessor :animals

  def initialize(animals)
    @animals = animals
  end

  def lyrics
    get_animals.collect { |instance| verse(instance) }.join("\n\n")
  end

  def get_animals
    ::Animal.all(animals).collect {|item| item || NilAnimal.new }
  end

  def verse(animal = nil)
    %Q[Old MacDonald had a farm, E-I-E-I-O,
And on that farm he had #{animal.species.articlize}, E-I-E-I-O,
With #{animal.sound.articlize} #{animal.sound} here and #{animal.sound.articlize} #{animal.sound} there,
Here #{animal.sound.articlize}, there #{animal.sound.articlize}, everywhere #{animal.sound.articlize} #{animal.sound},
Old MacDonald had a farm, E-I-E-I-O.]
  end

end

class NilAnimal

  def species
    "<silence>"
  end

  def sound
    "<silence>"
  end

end
