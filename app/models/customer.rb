class Customer
  attr_accessor :first_name, :last_name, :review, :rating, :content

  @@all =[]

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find {|ele| ele.full_name = name}
  end

  def self.find_all_by_first_name(name)

  end

  def self.all_names
    full_name
  end

  def add_review(restaurant,content,rating)
    Review(customer, review, content)
  end

  def num_reviews
    a = Review.all.select {|ele| ele.customer}.size
    a.inject(:+)
  end

  def restaurants
    Customer.all.select


end
