#!/usr/bin/env ruby
#

require 'loop'
require 'station'

class FSM
  PARKED = 0
  STARTINGFROMPARK = 1
  INTRANSIT = 2
  STOPPING = 3
  STOPATSTATION = 4
  DOORSOPENING = 5
  DOORSCLOSING = 6
  STARTINGFROMSTATION = 7
  EMERGENCYBRAKING = 8
  TRACKVIOLATION = 9
end


class Train
  # the end sim (eS) is the triggering event to end the sim. the code (C) 
  # is the 
  
  def initialize(eS, C)
    @fsm = FSM::PARKED
    @trainloc = STATIONLIST[0] # at the yard
    @traindest = STATIONLIST[0] # first dest is the year.
    @trainorigin = STATIONLIST[0] # first
    @endSim = eS  
    @simType = C
    @reportlist = []
    @totalstats = []
    @Done = false
  end

  def parked()
  end

  
  def log(message, eventtime)
    @reportlist.push(message + eventtime))    
  end

  def report(message)
    @f.write(message)
  end

  def printReport()
    @f = File.open("trainreport" + @simType + ".log", "w")
    report "Train Simulation Report"
    report "-----------------------------------------------------"
    #
    for i in @reportlist
      report @reportlist[i]
    end
    report "-----------------------------------------------------"
    @f.close
  end

  # this is the main loop of the train simulation. it takes the train through a 
  # specific set of loops, or can finish the day off at a specific time. 
  # 
  def go()
    # this is the statemachine that does all the work.
    while Done == false
      # get the next event. note that the event code changes the statemachine etc 
      # as appropriate. The states and the random gens create new events for a 
      # fun ride. 
      event, time, description = getnextevent()
      case fsm
      when FSM::PARKED
        parked()
                
      when FSM::STARTINGFROMPARK
      when FSM::TRANSIT
      when FSM::STOPPING
      when FSM::STOPPEDATSTATION
      when FSM::DOORSOPENING
      when FSM::DOORSCLOSING
      when FSM::STARTINGFROMSTATION
      when FSM::EMERGENCYBRAKING
      when FSM::TRACKVIOLATION
      when FSM::ENDSIMULATION
        printReport()
        @Done = true
      else
        puts('This state is not recognized, aborting')
        exit 27 # the escape ansi code.
      end # 
      puts('The simulation is complete. ')
    end
  end
end
