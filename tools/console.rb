require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


c1 = Customer.new("George", "Harrison")
c2 = Customer.new("Paul", "McCartney")
c3 = Customer.new("Ringo", "Star")
c4 = Customer.new("John", "Lennon")
c5 = Customer.new("John", "Smith")

r1 = Restaurant.new("The Italian Job")
r2 = Restaurant.new("The Fish Plaice")
r3 = Restaurant.new("Pita Pan")
r4 = Restaurant.new("Thai Tanic")

re1 = Review.new(c1, r1, "Spicy Meatballs!", 5)
re2 = Review.new(c2, r1, "Mmm creamy pasta!", 4)
re3 = Review.new(c4, r2, "Cod do better.", 3)
re4 = Review.new(c1, r3, "Never Never again.", 1)
re5 = Review.new(c2, r1, "Pasta la vista!", 4)
re6 = Review.new(c5, r3, "Pita-ful", 2)
re6 = Review.new(c1, r1, "Cod almighty!!", 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
