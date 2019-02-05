class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
@@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

def self.find_by_name(name)
  name.split()
  end

def self.add_review (restaurant, content, rating)
  Review.new((restaurant, self, content, rating))
end

def num_reviews
num = 0
Review.all.each do |review|
review.customer == self
num += 1
end
num
end

def restaurants
  restaurant_array = []
Review.all.each do |review|
review.customer == self
restaurant_array << review.restaurant
end
restaurant_array.uniq
end

end
