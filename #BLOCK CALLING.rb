#BLOCK CALLING 


def get_name(prompt, &block)
  print prompt + ": "
  name= gets.chomp
  print "Age: "
  age = gets.chomp
  block.call(name, age)
  name
end

my_name = get_name("Enter you name") do |your_name, age|
  puts "Thats cool name, #{your_name} Age #{age}."
end

puts "my_name: #{my_name}"