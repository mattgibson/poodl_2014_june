# Feel free to delete the instructions once you get going
puts instructions(__FILE__)

class Bottles

  def verse(number)
    case number
    when 0
      "#{number_representation(number).to_s.capitalize} #{word_for_bottles(number)} of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, #{number_representation(next_number_of_bottles(number))} #{word_for_bottles(number)} of beer on the wall.\n"
    else
      "#{number_representation(number).to_s.capitalize} #{word_for_bottles(number)} of beer on the wall, #{number} #{word_for_bottles(number)} of beer.\nTake #{word_for_what_to_take_down(number)} down and pass it around, #{number_representation(next_number_of_bottles(number))} #{word_for_bottles(next_number_of_bottles(number))} of beer on the wall.\n"
    end
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

  end

end
