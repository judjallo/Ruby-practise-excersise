class Player
	include Comparable


	attr_reader :name, :score 

	def <=>(other_player)
		score <=> other_player.score
	end

	def initialize(name, score)
		@name = name
		@score = score
	end
end 

player1 = Player.new("Elita", 100)
player2 = Player.new("Elza", 80)

puts "player1 > player2: %s" %(player1 > player2)
puts "player1 < player2: %s" %(player1 < player2)


#By including the Comparable class and defining the spaceship operator( <=> ), we get access to comparison functionality in our classes: