def get_name(prompt, &block)
 if block_given?
    print prompt + ": "
    name= gets.chomp
    print "Age: "
    age = gets.chomp
    yield name, age 
    name
 else
   puts "No block given."
 end
end

my_name = get_name("Enter you name") do |your_name, age|
  puts "Thats cool name, #{your_name} Age #{age}."
end

puts "my_name: #{my_name}"