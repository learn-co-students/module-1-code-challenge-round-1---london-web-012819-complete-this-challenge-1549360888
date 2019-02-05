class Review

  attr_accessor :restaurant, :review
  attr_reader :customer

  @@all = []

  def initialize(customer, restaurant, review)
    @customer = customer
    @restaurant = restaurant
    @review  = review
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    #Customer.all.select {|ele| ele.review == self}
    @@all.map {|ele| ele.customer == self}
  end

  def restaurant
    customer.map {|ele| ele.restaurant}
  end

  def rating

  end

  def content
    @@all.map {|ele| ele.review}
  end

end
