#!/usr/bin/env ruby
# frozen_string_literal: true

str = 'パタトクカシーー'
res = ''
0.upto(str.size / 2 - 1) { |i| res += str[i * 2] }
puts res
