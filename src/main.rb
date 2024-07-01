#!/usr/bin/env ruby
# file: main.rb
# the train simulation main routine.

require_relative 'train.rb'

# create a new train object
t = Train.new 

# kick of a day of simulation
t.go 
