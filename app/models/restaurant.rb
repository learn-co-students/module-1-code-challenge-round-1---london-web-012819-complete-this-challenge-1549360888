class Restaurant

  ##has many reviews, and through thos many customers

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name

    @@all << self
  end

  def customers
    Review.all.map do |review|
      if review.resturant == self
        review.customer
      end
    end.compact.uniq
    ##compact method removes nil values from an array
  end

  def reviews
    Review.all.select { |review| review.resturant == self}
  end

  def average_star_rating
    total_numer_of_stars = 0
    reviews.each do |review|
      total_numer_of_stars += review.rating
    end
    total_numer_of_stars / reviews.length
  end

  def longest_review
    reviews.sort_by { |review| review.content.size}.last
  end

  def self.find_by_name(name)
    self.all.find { |resturant| resturant.name == name}
  end


  def self.all
    @@all
  end

end
