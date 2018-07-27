  class Trip

  	attr_reader :listing, :guest, :visit_num

  	@@all = []

  	def initialize(listing,guest,visit_num)
  		@listing = listing
  		@guest = guest
      @visit_num = visit_num
  		@@all << self
  	end

  	def self.all
  		@@all
  	end

  end