class Chef
	def make_chicken
		puts "The chef makes chicken"
	end

	def make_salad
		puts "The chef makes salad"
	end

	def make_special_dish
		puts "The chef makes bbq ribs"
	end
end

class ItalianChef < Chef
	def make_special_dish # funcion overwrites chef special dish method
		puts "The Italian Chef makes rissotto"
	end

	def makes_pasta
		puts "The Italian chef makes pasta"
	end
end 

chef = Chef.new()
chef.make_special_dish

italian_chef = ItalianChef.new()
italian_chef.makes_pasta