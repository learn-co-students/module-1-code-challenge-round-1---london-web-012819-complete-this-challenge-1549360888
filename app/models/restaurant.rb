class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
@@all
  end

  def customers
    customer_array = []
Review.all.each do |review|
review.restaurant == self
customer_array << review.customer
end
customer_array.uniq
  end

  def reviews
Review.all.select do |review|
  review.restaurant == self
end
  end

  def average_star_rating
    average_rating = 0
    counter = 0
reviews.each do |review|
  average_rating += review.rating
  counter += 1
  end
  average_rating / counter
end

def longest_review
reviews.max_by do |review|
review.content.length
end
end

end
