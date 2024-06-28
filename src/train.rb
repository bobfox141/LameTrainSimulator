#!/usr/bin/env ruby
#

require 'loop.rb'
require 'station.rb'

class Train
  def stopAtStation; end

  def parked; end

  def transit; end

  def stopping; end

  def doorsOpening; end

  def doorsClosing; end

  def parked; end

  # states
  PARKED = 0
  STARTINGFROMPARK = 1
  TRANSIT = 2
  STOPPING = 3
  STOPATSTATION = 4
  DOORSOPENING = 5
  DOORSCLOSING = 6
  STARTINGFROMSTATION = 7

  trainStateList = [PARKED, STARTINGFROMPARK, TRANSIT, STOPPING, STOPATSTATION, DOORSOPENING, DOORSCLOSING,
                    STARTINGFROMSTATION]

  train = PARKED
  loop =
    # we are going to use this function to get going and add the other parts incrementally.
    # the train leaves the yard in the AM in a basic simulation and does a number of loops until
    # the end of the day, when they put the train in for maintainence and change the crew.
    # Let's get started.

    def driveTheTrain
      puts('This is a train simulation. It starts the day parked in the yard being maintained.')
    end
end # end class Train
