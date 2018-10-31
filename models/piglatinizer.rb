class PigLatinizer

  def piglatinize(user_input)
    x = (user_input.split(" ").length == 1) ? piglatinize_word(user_input) : piglatinize_sentence(user_input)
    puts x
    x
  end

  private

  def piglatinize_word(word)
    vowels = ["a","A","e","E","i","I","o","O","u","U"]
    split_word = word.split('')
    index_num = 0
    split_word.each_with_index do |char, i|
      if vowels.include?(char)
        index_num = i
        break
      end
    end
    before = split_word.slice(0, index_num)
    if before == []
      return word + 'way'
    else
    return (split_word[index_num..-1].join + before.join('') + 'ay')
    end
  end


  def piglatinize_sentence(sentence)
    sentence.split(" ").collect {|word| piglatinize_word(word)}.join(" ")
  end

end

