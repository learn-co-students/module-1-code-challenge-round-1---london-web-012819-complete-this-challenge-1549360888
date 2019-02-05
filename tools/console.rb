require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Erik", "Erlandsson")
customer2 = Customer.new("Erik", "Selin")
customer3 = Customer.new("Jakob", "Dubois")
customer4 = Customer.new("Agneta", "Johansson")

resturant1 = Restaurant.new("Bella dolce")
resturant2 = Restaurant.new("Novikov")
resturant3 = Restaurant.new("Pret a manger")
resturant4 = Restaurant.new("Tonys")

review1 = Review.new(resturant1, customer1, "Extremly gooooooooddd, nice food", 4)
review2 = Review.new(resturant2, customer3, "Okey", 1)
review3 = Review.new(resturant1, customer4, "WWWWOOOWW", 5)
review4 = Review.new(resturant4, customer1, "Meeh", 2)
review5 = Review.new(resturant3, customer2, "Very nice location and people working there, will definently come ack here agian!", 4)
review6 = Review.new(resturant1, customer3, "Desent", 3)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
