
class Guest

  	attr_accessor :name, :visit_num

  	@@all = []

  	def initialize(name)
  		@name = name
  		@@all << self
  	end

  	def trips
  		Trip.all.select do |trip|
  			trip.guest ==self
  		end
  	end

  	def trip_count
  		trips.count
  	end

  	def listings
  		trips.map do |trip|
  			trip.listing
  		end
  	end

  	def self.find_all_by_name(name)
  		self.all.select do |guest|
  			guest.name == name
  		end
  	end

  	def self.pro_traveller
  		self.all.sort_by do |guest|
  			guest.trip_count
  		end.last
  	end

  	def self.all
  		@@all
  	end

  end