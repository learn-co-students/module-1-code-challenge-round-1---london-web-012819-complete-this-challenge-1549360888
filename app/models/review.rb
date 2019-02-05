class Review

  attr_reader :customer, :restaurant, :string
  attr_accessor :rating

  @@all = []

  def initialize(customer, restaurant, string, rating)
    @customer = customer
    @restaurant = restaurant
    @string = string
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end


  def content
    puts "#{self.customer.first_name}'s review: #{self.rating}, saying- #{self.string}"
  end

end
