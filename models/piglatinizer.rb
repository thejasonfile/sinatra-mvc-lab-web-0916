class PigLatinizer

  attr_accessor :text

  def to_pig_latin(text)
    words_arr = text.split(" ")
    words_arr.map do |word|
      piglatinize(word)
    end.join(" ")
  end

  def piglatinize(word)
    #if text begins with vowel...
    if word[0].downcase.match(/[aeiou]/)
      #just add 'way' to it
      word += 'way'
    else
    #split the word into an array
    arr = word.split("")
    #find the first vowel
    first_vowel_index = arr.find_index {|letter| letter.match(/[aeiou]/)} # returns index of first vowel
    #slice the letters from the beginning of the word up to the vowel
    letters_before_first_vowel = arr.shift(first_vowel_index)
    #push those letters to the back of the word
    arr = arr.push(letters_before_first_vowel)
    #add 'ay'
    arr.join("") + "ay"
  end
  end

end