#!/usr/bin/env ruby
# frozen_string_literal: true

require 'set'

x = 'paraparaparadise'
y = 'paragraph'
x_bigram = Set.new()
y_bigram = Set.new()

buf = []
x.chars.each do |word|
  buf << word
  x_bigram << buf.dup if buf.size == 2
  buf.shift if buf.size == 2
end
x_bigram << [x[-1]]

buf = []
y.chars.each do |word|
  buf << word
  y_bigram << buf.dup if buf.size == 2
  buf.shift if buf.size == 2
end
y_bigram << [y[-1]]

p x_bigram + y_bigram
p x_bigram & y_bigram
p x_bigram - y_bigram

puts x_bigram.include?(%w[s e])
puts y_bigram.include?(%w[s e])
