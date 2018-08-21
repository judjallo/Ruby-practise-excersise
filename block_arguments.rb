def get_name
  print "Enter your name:"
  name= gets.chomp
  yield name
end

get_name do |name|
  puts "Thats cool name, #{name}"
end