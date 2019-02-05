class Restaurant
  attr_accessor :name, :custmer

  @@all = []

  def initialize(name, customer)
    @name = name
    @customer = customer
    @@all << self
  end

  def self.all
    @@all
  end
  
end
