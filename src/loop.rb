#!/usr/bin/env ruby
# file: loop.rb

require 'station'

stationList = ['New Baltimore Train Yard', 'Hampton Cove', 'East BumFark', 'Downtown Huntington', 'Redstone Clayface',
               'Bothan Death Star', 'Mousekatters', 'Bailey Cove']

class Loop
  def pickAStation
    stationlist[rand(1..stationlist.Length)]
  end

  def minTestLoop
    a = pickAStation
    b = pickAStation
    b = pickAStation until a != b
    [stationList[0], a, b]
  end
end

  