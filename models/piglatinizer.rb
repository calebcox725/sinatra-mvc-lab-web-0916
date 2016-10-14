class PigLatinizer
  def piglatinize(word)
    chars_arr = word.chars
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

    # If it starts with a vowel, throw a "w" on the front
    if vowels.include?(chars_arr.first)
      chars_arr.unshift("w")
    end

    # Put each char at the end of the array until gets to a vowel
    until vowels.include?(chars_arr.first)
      chars_arr << chars_arr.shift
    end

    # Append "ay" to the end
    chars_arr << "a" "y"

    # Rejoin the word
    chars_arr.join("")
  end

  def to_pig_latin(phrase)
    phrase.split(" ").map { |word| piglatinize(word) }.join(" ")
  end
end