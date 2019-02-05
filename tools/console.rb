require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer1 = Customer.new("Tomi","Ajayi")
customer2 = Customer.new("Paw","Puddle")

rest1 = Restaurant.new("Tavern")
rest2 = Restaurant.new("BrightFood")

review1 = Review.new("customer1", "rest1", "The food is good")
review2 = Review.new("customer2", "rest1", "Good service")
review3 = Review.new("customer1", "rest2", "No Parking")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
