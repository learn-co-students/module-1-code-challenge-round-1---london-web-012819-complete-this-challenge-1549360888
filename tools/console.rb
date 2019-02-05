require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Sofia", "Fredriksson")
c2 = Customer.new("Elisabet", "Silje")
c3 = Customer.new("Karl", "Fredriksson")
c4 = Customer.new("Ricky", "McCaw")
c5 = Customer.new("Luc", "Batty")
ce6 = Customer.new("Karl", "Silje")

rest1 = Restaurant.new("Bone Daddies")
rest2 = Restaurant.new("Mc Donalds")
rest3 = Restaurant.new("Ceviche")
rest4 = Restaurant.new("Pure")
rest5 = Restaurant.new("Yo Sushi!")
rest6 = Restaurant.new("Ceviche")

rev1 = Review.new(c1, rest1, 5, "Tasty ramen! Highly recommend!")
rev2 = Review.new(c2, rest3, 2, "Cheap and gross")
rev3 = Review.new(c3, rest2, 4, "Good value!")
rev4 = Review.new(c4, rest4, 3, "Ok for lunch")
rev5 = Review.new(c5, rest5, 2, "Saw a mouse!")
rev5 = Review.new(c5, rest1, 4, "Delicious!")
rev5 = Review.new(c1, rest3, 2, "Good for groups")
rev5 = Review.new(c5, rest3, 2, "Delicious food!")




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
