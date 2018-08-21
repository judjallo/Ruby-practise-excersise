class Die
	def initialize(sides)
		@sides = sides
	end

	def generate_die_roll
		rand(@sides) + 1
	end

	def roll(number = 3)
		roll_array = []
		number.times do 
			roll_array << generate_die_roll
		end
		total = 0
		roll_array.each do |roll|
			new_total = total + roll
			total = new_total
		end
		total
	end
end

SIX_SIDED_DIE = Die.new(6)

puts "We are rolling a six sided die!"
puts SIX_SIDED_DIE.roll













=begin
def roll(sides, number = 3) # 3 x times roll 
	roll_array = [] #We create an empty array to hold the dice we're about to roll, called 'roll_array'.
	number.times do
		roll_value = rand(sides) + 1
		roll_array << roll_value
	end
	total = 0
	roll_array.each do |roll|
		new_total = total + roll
		total = new_total
	end
	total
end 

puts "We are rolling a six sided die!"
puts roll(6)
=end






=begin

puts "Welcome roll and die"
dice = ask("How many dice would you like to roll?: ")
number = dice.to_i
total = roll(number)
puts "You entered  #{dice} dice"
puts "For #{number} dice, your total is: #{total}"
=end



# RANDOM NUMBER FROM 1-6#
=begin
num = rand(1..6)
puts num
=end

#def roll
	#rand(6) + 1
#end 
#puts roll
#puts "How many dice would you like to roll?: "
#answer = gets.chomp.to_i 



#puts "Guess a number: "
#guess = gets.chomp.to_i


	



