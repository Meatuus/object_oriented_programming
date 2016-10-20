#Question 1
class Cat

	attr_accessor :name, :preferred_food, :meal_time

#Question 2
	def initialize(name, preferred_food, meal_time)
		@name = name
		@preferred_food = preferred_food
		@meal_time = meal_time
	end

#Question 4
	def eats_at
		if meal_time < 13
			"#{meal_time} AM"
		else
			pm = meal_time - 12
			"#{pm} PM"
		end
	end

#Question 5
	def meow
		"My name is #{name} and I eat #{preferred_food} at #{eats_at}."
	end

end

#Question 3
kitty = Cat.new("Kitty", "Kibble", 20)
purr = Cat.new("Purrr", "Salmon", 8)
silky = Cat.new("Silky", "Beef Chunks", 14)

#Question 6
puts kitty.meow
puts purr.meow
puts silky.meow
