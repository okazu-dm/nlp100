#!/usr/bin/env ruby
# frozen_string_literal: true

str = 'I am an NLPer'

words = str.split
chars = str.chars

words_bi_gram = []
chars_bi_gram = []

buf = []
words.each do |word|
  buf << word
  words_bi_gram << buf.dup if buf.size == 2
  buf.shift if buf.size == 2
end
words_bi_gram << [words[-1]]

buf = []
chars.each do |word|
  buf << word
  chars_bi_gram << buf.dup if buf.size == 2
  buf.shift if buf.size == 2
end
chars_bi_gram << [chars[-1]]

p words_bi_gram
p chars_bi_gram
