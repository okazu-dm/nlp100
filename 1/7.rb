#!/usr/bin/env ruby
# frozen_string_literal: true

def template(x, y, z)
  "#{x}時の#{y}は#{z}"
end

puts template(12, '気温', 22.4)
