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
    ::Animal.all(animals)
  end

  def verse(animal = nil)
    %Q[Old MacDonald had a farm, E-I-E-I-O,
And on that farm he had #{articlized_species(animal)}, E-I-E-I-O,
With #{articlized_sound(animal)} #{sound(animal)} here and #{articlized_sound(animal)} #{sound(animal)} there,
Here #{articlized_sound(animal)}, there #{articlized_sound(animal)}, everywhere #{articlized_sound(animal)} #{sound(animal)},
Old MacDonald had a farm, E-I-E-I-O.]
  end

  def articlized_species(animal)
    if animal == nil
      "a <silence>"
    else
      animal.species.articlize
    end
  end

  def articlized_sound(animal)
    sound(animal).articlize
  end

  def sound(animal)
    if animal == nil
      "<silence>"
    else
      animal.sound
    end
  end
end

