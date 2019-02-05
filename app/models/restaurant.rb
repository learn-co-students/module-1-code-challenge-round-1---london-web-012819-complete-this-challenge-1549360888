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
    @@all.find {|restaurant| name == restaurant.name}
  end

  def reviews
    Review.all.select { |review| review.restaurant == self  }
  end

  def customers
    reviews.map { |review| review.customer  }.uniq
  end

  def average_star_rating
    arr = reviews.map { |review| review.rating  }
    arr.inject(:+)/arr.length.to_f
  end

  def longest_review
    arr = reviews.map { |review| review.content  }
    arr.max_by { |content| content.length  }
    # doesn't include punctuation
  end
end
