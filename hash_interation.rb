business = {"name"=> "threehouse", "buba"=> "seven miles"}

business.each do |key, value|
  puts " The hash key is #{key} and the value is #{value}"
end                                                                                

business.each_key do |key|
  puts "he hei keys #{key}"
end 

business.each_value do |value|
  puts "he hei keys #{value}"
end 