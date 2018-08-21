class Monster
  attr_reader :name, :actions
  
  def initialize(name)
    @name = name
    @actions = {
        screams: 0,
        scares: 0,
        runs: 0
      }
  end
  
  def say(&block)
    print "#{name} says..."
    yield
  end
  
  def scream(&block)
    actions[:screams] += 1
    print "#{name} screams!"
    yield
   end 
 
  def scare(&block)
    actions[:scares] +=1
    print "#{name} scares you!"
    yield
   end
  
  def runs(&block)
    actions[:runs] +=1
    print "#{name} runs!"
    yield self if block_given? # to have a accses to the class inside of block
   end
  
  def inspect 
    "<#{name}, #{actions}>"
   end
  
  def print_scoreboard
    puts "-------------------------"
    puts"#{name} scoreboard"
    puts "-------------------------"
    puts "-Screams: #{actions[:screams]}"
    puts "-Scares: #{actions[:scares]}"
    puts "-Runs: #{actions[:runs]}"
    puts "-------------------------"
  end
end


monster = Monster.new("Boboo")
monster.say { puts "Welcome to my home!"}

monster.scream do
  puts "BOO!!!"
end

monster.scare do
  puts "Go away!"
end
monster.runs do |m| #from monster
  puts "th tk tk !"
  puts m.inspect
end

puts "\n"
monster.print_scoreboard

