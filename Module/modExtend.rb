#We've created a tracking module that creats an instances of something, pushes it on to an instances array, and then can find it in said array.

module Tracking
	def create(name)
		object = new(name)
		instances.push(object)
		return object
	end

	def instances 
		@instances ||= []
	end

	def find(name)
		instances.find do |instances|
			instances.name == name
		end
	end
end 

#From there, when we use the extend keyword, these methods will apply at the class level and not the instance level.

class Customer
	extend Tracking

	attr_accessor :name
	def initialize(name)
		@name = name
	end

	def to_s
		"[#{@name}]"
	end

end

#Those methods now run at the class level and return instances of the class we just created:

puts "Customer.instances: %s" %Customer.instances.inspect # =>Customer.instances: []
puts "Customer.create: %s" % Customer.create("Elita") # =>Customer.create: [Elita]
puts "Customer.create: %s" % Customer.create("Elza")
puts "Customer.instances: %s" % Customer.instances.inspect
puts "Customer.find('Elita'): %s" % Customer.find("Elita") # =>Customer.find('Elita): [Elita]
puts "Customer.find('Mike'): %s" % Customer.find("Mike")#=>Customer.find('Mike'):  