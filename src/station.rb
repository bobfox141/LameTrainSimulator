#!/usr/bin/env ruby
# file: station.rb
# author: smg
# description: 

STCLASSBASIC = 1  # basic station is just a platform 
STCLASSNICE = 2   # a nice station has shops and restrooms, a waiting area
STCLASSHUB = 3    # a hub station has a waiting area and a shop, as well as other transportation
STCLASSYARD = 4   # a yard station has no passengers but can fix a broken train and park it overnight.

BOUNDS = .997 * .5

class Station 
  # a station has a name
  # location in the loop in km
  # avg passenger ct  per stop ... 
  # ttl passengers, per passenger, so more passengers, longer stop
  # station class, i.e. how nice it is. 
  # there will be a commuter feature later on.
  # so the station determins how long the wait is before the train gets moving again. The higher the class of the longer the wait, and the larger the number of passengers the longer the wait. 
  
  attr_accessor :name, :loopkm, :avgpasscnt, :timetoload, :stclass

  def initialize(n, l, avgcnt, ttoload, stc)
    maxpassbusiest = Random.rand(100)  # the max passengers for this station at the busiest. 
    @name = n
    @loopkm = l
    @avgpasscnt = stc * maxpassbusiest 
    @timetoload = ttoload 
    @stclass = stc
  end

  # returns the upper and lower bounds of the number of people
  def bounds(a) 
    band = BOUNDS * a 
    return [a - band, a + band]
  end
  

  def getPassengerCount(a)  
    p = bounds(a)
    return  rand(p[0]..p[1])
  end

  
  def stationWaitTime
    
  end  
end