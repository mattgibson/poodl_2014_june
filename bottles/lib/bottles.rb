# Feel free to delete the instructions once you get going

class Bottles

  def verse(current_number_of_bottles)
    "#{description_for(current_number_of_bottles)} of beer on the wall, ".capitalize +
        "#{description_for(current_number_of_bottles)} of beer.\n#{thing_to_do_next_with(current_number_of_bottles)}, "+
        "#{description_for(next_number_of_bottles(current_number_of_bottles))} of beer on the wall.\n"
  end

  def verses(initial_number_of_bottles, final_number_of_bottles)
    initial_number_of_bottles.downto(final_number_of_bottles).collect {|verse_number| verse(verse_number) }.join("\n")
  end

  def song
    verses(number_of_bottles_at_the_start, 0)
  end


  def word_for_bottles(number)
    one_bottle_left?(number) ? 'bottle' : 'bottles'
  end

  def word_for_what_to_take_down(number)
    one_bottle_left?(number) ? 'it' : 'one'
  end

  def number_representation(number)
    no_bottles_left?(number) ? 'no more' : number
  end

  def next_number_of_bottles(number)
    no_bottles_left?(number) ? number_of_bottles_at_the_start : number -1
  end

  def thing_to_do_next_with(number)
    no_bottles_left?(number) ? "Go to the store and buy some more" : "Take #{word_for_what_to_take_down(number)} down and pass it around"
  end

  def description_for(number)
    "#{number_representation(number)} #{word_for_bottles(number)}"
  end


  def no_bottles_left?(number)
    number == 0
  end

  def one_bottle_left?(number)
    number == 1
  end

  def number_of_bottles_at_the_start
    99
  end

end
