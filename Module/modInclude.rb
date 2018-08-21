module Fetcher 
	def fetch(item)
	puts "I will bring that #{item} right back!"
	end
end

class Dog
	include Fetcher
	attr_reader :name

	def initialize(name)
		@name = name
	end
end

class Cat
	include Fetcher
	attr_reader :name

	def initialize(name)
		@name = name
	end
end

dog = Dog.new ("Pif")
cat = Cat.new ("Hercules")

dog.fetch("ball") 
cat.fetch("mice") 