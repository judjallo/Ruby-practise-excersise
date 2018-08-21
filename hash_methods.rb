hash = { "bread" => "hanza", "quantity"=> 3, "cheese"=> "blue", 4 => "milk"}
puts "hash: #{hash.inspect}"

print "hash.length: "
puts hash.length

print "hash.invert: "
puts hash.invert

print "hash.shift: "
puts hash.shift.inspect
print "hash: "
puts hash.inspect

hash["bread"] = "Hanza"
puts hash.inspect

puts "Hash merging: "
print "Original hash: "
puts hash.inspect
print "Merged with {' calories'=> 100}"
puts hash.merge ({'calories'=>100})
print "Original hash: "
puts hash.inspect
