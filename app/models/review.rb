class Review

  attr_accessor :name, :rating, :content
  attr_writer :full_name, :restaurant,

  @@all = []

  def initialize(name, full_name, restaurant, rating, content)
    @name = name
    @full_name = full_name
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

  def customer_review
    Review.all.select {|customer| customer.full_name == self}
  end

  def restaurant_review
    Review.all.select {|restaurant| restaurant.restaurant == self}
  end

  def rating_review
    Review.all.select {|rating| rating.rating == self}
  end

end
