#!/usr/bin/env ruby
# frozen_string_literal: true

def shuffle_char(word)
  return word if word.size <= 4

  word[0] + word[1..-2].chars.shuffle.join + word[-1]
end

str = 'I couldn’t believe that I could actually understand what I was reading : the phenomenal power of the human mind .'

puts str.split.map { |word| shuffle_char(word) }.join(' ')
