
  
  class Listing

  	attr_accessor :city, :home, :visit_num

  	@@all = []

  	def initialize(city,home)
  		@city = city
  		@home = home
  		@@all << self
  	end

  	def trips
  		Trip.all.select do |trip|
  			trip.listing == self
  		end
  	end

  	def trip_count
  		trips.count
  	end

  	def guests
  		trips.map do |trip|
  			trip.guest
  		end
  	end

  	def self.find_all_by_city(city)
  		self.all.select do |listing|
  			listing.city == city
  		end
  	end

  	def self.most_popular
  		self.all.sort_by do |listing|
  			listing.trip_count
  		end.last
  	end

  	def self.all
  		@@all
  	end

  end