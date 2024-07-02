#!/usr/bin/env ruby
# file: loop.rb

require 'station'

# the two special stations are the Yard and 'In Transit'
# a station will also has a class.
STATIONLIST = ['New Baltimore Train Yard', 'Hampton Cove', 'East BumFark', 'Downtown Huntington', 'Redstone Clayface',
               'Bothan Death Star', 'Rogue Station', 'Mousekatters', 'Bailey Cove', 'In Transit']

SMALLLOOP = { 0 => 'New Baltimore Train Yard', 1 => 'Lave Station', 2 => 'Hampton Cove', 3 => 'Bothan Death Star',
              4 => 'Bailey Cove' }
