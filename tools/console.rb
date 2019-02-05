require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# customer
r1 = Restaurant.new("The Grand Budapest")
r2 = Restaurant.new("Grapes & Cheese & Stuff")
r3 = Restaurant.new("Jim's Really Greasy Spoon")

c1 = Customer.new("Peter", "Glover")
c2 = Customer.new("Joanne", "Glover")
c3 = Customer.new("David", "Newby")
c4 = Customer.new("Tracy", "Newby")
c5 = Customer.new("Piers", "Morgan")
c6 = Customer.new("Jeremy", "Clarkson")


review1 = Review.new(c1, r1, "epic", 5)
review2 = Review.new(c2, r1, "great food", 4)
review3 = Review.new(c3, r2, "room for improvement", 2)
review4 = Review.new(c4, r2, "husband was not happy", 3)
review5 = Review.new(c5, r3, "lovely gammon", 4)
review6 = Review.new(c6, r3, "best gammon in london", 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
