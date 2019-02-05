require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

salem = Customer.new("salem", "qemlas")
kian = Customer.new("kian", "niak")
stuart = Customer.new("stu", "brew")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
