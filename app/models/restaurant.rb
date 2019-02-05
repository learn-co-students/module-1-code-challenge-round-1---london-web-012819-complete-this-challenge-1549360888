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

  def self.find_by_name(name)
    all.find { |restaurant| restaurant.name.downcase == name.downcase }
  end

  def customers
    Review.all.select { |review| review.restaurant == self  }.uniq
  end

  def reviews
    customers.select { |customer| customer.content }
  end

  def average_star_rating
  end

end
