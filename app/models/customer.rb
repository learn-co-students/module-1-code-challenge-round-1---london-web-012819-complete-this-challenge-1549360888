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

  def customer.all.select {|customer| customer.all == self}
  end

  #given a string of a **full name**, returns the **first customer** whose full name matches

  def full_name.each {|customer| customer.find_by_name == full_name}
  end

  #given a string of a first name, returns an **array** containing all customers with that first name

  def first_name.all.each {|customer| customer.find_all_by_first_name == first_name}
  end

  def


end
