require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#new customers

ebi = Customer.new ("Ebi", "Ajayi")
sally = Customer.new ( "Sally", "Williams")
sarah = Customer.new ("Sarah", "Daniels" )

#reviews (customer, restaurant, rating, content)

review1 = Review.new (ebi, restaurant1, 5, "I had an amazing time there")
review2 = Review.new (ebi, restaurant2, 1, "The food made me sick")
review3 = Review.new (sally, restaurant3, 4, "Decent")
review4 = Review.new (sarah, restaurant4, 5, "Excellent food")


#restuarant (name, customer)

restaurant1 = Restuarant.new ("The Turtle and The Duck", ebi)
restaurant2 = Restuarant.new ("The Seed", sally)
restaurant3 = Restuarant.new ("Apples and Pears", ebi)
restaurant4 = Restuarant.new ("Duck and Waffle", sarah)



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
