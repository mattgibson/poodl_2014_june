# Feel free to delete the instructions once you get going
puts instructions(__FILE__)

class Bottles

  def verse(number)
    "#{number_representation(number).to_s.capitalize} #{word_for_bottles(number)} of beer on the wall, "+
        "#{number_representation(number)} #{word_for_bottles(number)} of beer.\n#{thing_to_do_next(number)}, "+
        "#{number_representation(next_number_of_bottles(number))} #{word_for_bottles(next_number_of_bottles(number))} of beer on the wall.\n"
  end

  def verses(end_verse, start_verse)
    end_verse.downto(start_verse).collect {|verse_number| verse(verse_number) }.join("\n")
  end

  def song
    verses(99, 0)
  end

  def word_for_bottles(number)
    number == 1 ? 'bottle' : 'bottles'
  end

  def word_for_what_to_take_down(number)
    number == 1 ? 'it' : 'one'
  end

  def number_representation(number)
    number == 0 ? 'no more' : number
  end

  def next_number_of_bottles(number)
    number == 0 ? 99 : number -1
  end

  def thing_to_do_next(number)
    number == 0 ? "Go to the store and buy some more" : "Take #{word_for_what_to_take_down(number)} down and pass it around"
  end

end
