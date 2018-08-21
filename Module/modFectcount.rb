module Fetcher 
	def self.include(klass) #can be any name but no a class
		attr_accesories :fetch_count
	end 

	def fetch(item)
		@fetch_count ||= 0
		@fetch_count +=1
		puts "[#{name}, Fetch count: #{@fetch_count}] I will bring that #{item} right back!"
	end
end

class Dog
	include Fetcher
	attr_reader :name

	def initialize(name)
		@name = name
	end
end

dog = Dog.new("Pifs")
dog2 = Dog.new ("Ringo")
dog.fetch("ball")
dog.fetch("toy")
dog2.fetch("ball")
dog2.fetch("toy")