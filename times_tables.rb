class TimeTables 
	def initialize (number)
		@number = number
    end

    def output
    	if @number == -1
    		(1..12).each do |number|
    		end
    	else 
    		output_times_table(@number)
    	end
    end

    def output_times_tables (number)
    	puts "Is #{number} time tables: "
    	(1..2).each do |multiplier|
    		total = number * multiplier
    		puts "#{multiplier} * #{number} = #{total}"
    	end
    	puts "\n"
    end
end




#-----------USE A METHOD---------#
=begin def output_times_table(number)

  puts "Is #{number} times table:"
  (1..12).each do |multiplier|
    total = number * multiplier
    puts "#{multiplier} x #{number} = #{total}"
  end
  puts "\n"

end

puts "Type any number: "
input_number = gets.chomp.to_i

if input_number == -1
  (1..12).each do |number|
    output_times_table(number)
  end
else
  output_times_table(input_number)
end
=end







#----Amend your program so that if -1 is given above, it will output all tables from 1 to 12-----#
=begin puts "Type any number: "
input_number = gets.chomp.to_i

if input_number == -1

  (1..12).each do |number| # this formula will work with all number (1..2)

    puts "Is #{number} times table:"
    (1..12).each do |multiplier|
      total =number * multiplier
      puts "#{multiplier} x #{number} = #{total}"
    end
    puts "\n"

  end

else

  puts "Is #{input_number} times table:"
  (1..12).each do |multiplier|
    total = input_number * multiplier
    puts "#{multiplier} x #{input_number} = #{total}"
  end
  puts "\n"

end
=end


	

#------Amend your program so that it asks for a number and outputs that table (e.g. 2, 3, etc)-----#
=begin 
puts "Type any number: "
number = gets.chomp.to_i
puts "Your number time table: "

(1..12).each do |multiplier|
	total = number * multiplier
	puts " #{multiplier} * #{number} = #{total}"
end
=end






#-----------------Time table----------#

#(1..12).each do |multiplier|
#	puts 2 * multiplier
#end


# ----OUTPUTS Number multiplay---- #
# a = 1
# b= 2

# puts 1 *2
# puts 2 *2
