class Review

  attr_accessor :name

  @@all = []

  def initialize(name, full_name)
    @name = name
    @full_name = full_name
    @@all << self
  end

  def self.all
    @@all
  end



end
