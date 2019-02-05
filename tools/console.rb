require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Kian", "Edalat")
c2 = Customer.new("Sal", "Jackson")
c3 = Customer.new("Ana", "Pak")
c4 = Customer.new("Kian", "Peterson")

r1 = Restaurant.new("Dishoom")
r2 = Restaurant.new("Five Guys")
r3 = Restaurant.new("Vapiano")
r4 = Restaurant.new("Princi")

Review.new(r1, c1, "excellent", 5)
Review.new(r2, c2, "very good", 4)
Review.new(r3, c3, "could be better", 3)
Review.new(r4, c4, "disappointing", 1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
