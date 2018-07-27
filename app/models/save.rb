require 'pry'
require_relative './trip'
require_relative './guest'
require_relative './listing'

bougie = Listing.new("San Francisco","Bougie")
poor = Listing.new("Houston","Poor")
squalor = Listing.new("Seattle","Squalor")

arnie = Guest.new("Arnie")
helga = Guest.new("Helga")
olga = Guest.new("Olga")

trip1 = Trip.new(bougie,arnie,1)
trip2 = Trip.new(bougie,arnie,4)
trip3 = Trip.new(poor,olga,6)
trip4 = Trip.new(squalor,helga,2)

bougie.guests
arnie.listings
poor.guests
olga.listings

bougie.trips
poor.trips
squalor.trips

arnie.trips
olga.trips
helga.trips

bougie.guests
arnie.listings

bougie.trips.count

Guest.find_all_by_name("Arnie")
Guest.find_all_by_name("Helga")
Listing.find_all_by_city("San Francisco")

binding.pry

true