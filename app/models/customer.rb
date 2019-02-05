require "pry"

class Customer

  ##has many reviews, and through thos many resturants
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(resturant, content, rating)
    Review.new(resturant, self, content, rating)
  end

  def num_reviews
    Review.all.select { |review| review.customer == self }.length
  end

  def restaurants
    Review.all.map do |review|
      if review.customer == self
        review.resturant
      end
    end.compact.uniq
    ##compact method removes nil values from an array
  end

  def self.find_by_name(name)
    self.all.find { |customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    self.all.select { |customer| customer.first_name == name}
  end

  def self.all_names
    self.all.map { |customer| customer.full_name}
  end

  def self.all
    @@all
  end
end
