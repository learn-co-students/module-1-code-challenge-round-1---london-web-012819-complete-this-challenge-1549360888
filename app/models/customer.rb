class Customer

  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def find_by_name(full_name)
    Customer.full_name.find
  end

  def find_all_by_first_name(first_name)
    Customer.find_by_name.map {|match| match.first_name == self}
  end

  def all_names
    Customer.full_name.select
  end

end
