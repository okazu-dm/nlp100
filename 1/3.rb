#!/usr/bin/env ruby
# frozen_string_literal: true

str = 'Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.'
lens = []
str.split.each { |word| lens << word.size }
p lens