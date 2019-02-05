class Review
  ##belongs to one resturant and one customer

  attr_reader :customer, :resturant, :rating, :content

  @@all = []

  def initialize(resturant, customer, content, rating)
    @resturant = resturant
    @customer = customer
    @content = content
    @rating = rating

    @@all << self
  end

  def self.all
    @@all
  end
end
