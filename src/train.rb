#!/usr/bin/env ruby
#




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

stationList = ['Hampton Cove', 'East BumFark', 'Downtown Huntington', 'Redstone Clayface', 'Bothan Death Star',
               'Mousekatters', 'Bailey Cove']


def driveTheTrain
  puts('This is a train simulation. It starts the day parked in the yard being maintained.')


  until train == PARKED

  end
  
end

