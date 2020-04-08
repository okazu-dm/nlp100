#!/usr/bin/env ruby
# frozen_string_literal: true

def cipher_char(inp)
  return (219 - inp.ord).chr if ('a'..'z').include?(inp)

  inp
end

def cipher(inp)
  res = []
  inp.chars.each { |c| res << cipher_char(c) }
  res.join
end

puts cipher('He110 W0r1d!')