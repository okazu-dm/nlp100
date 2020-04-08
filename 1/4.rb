#!/usr/bin/env ruby
# frozen_string_literal: true

str = 'Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can.'
exceptions = [1, 5, 6, 7, 8, 9, 15, 16, 19]
res = {}
str.split.each_with_index do |word, idx|
  fetch_len = exceptions.include?(idx + 1) ? 1 : 2
  key = word[0, fetch_len]
  res[key] = idx + 1
end
p res
