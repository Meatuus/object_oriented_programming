class Paperboy

	attr_accessor :name, :experience
	attr_reader :earnings

	# @@base_quota = 50

	def initialize(name, experience, earnings)
		@name = name
		@experience = experience
		@earnings = earnings
	end

	def quota
		next_quota = (experience/2) + 50
	end

	def deliver(start_address, end_address)
		house_numbers = end_address - start_address
			if house_numbers >= quota
				daytotal = (quota * 0.25) + ((house_numbers - quota) * 0.50)
			else
				daytotal = (house_numbers * 0.25) - 2
			end
			puts daytotal
			@earnings += daytotal
			puts @earnings
			@experience = quota
	end

	def report
		"I'm #{name}, I've delivered to #{experience} houses and I've earned $#{earnings} so far!"
	end

end

timmy = Paperboy.new("Timmy", 80, 10)

puts timmy.quota
puts timmy.deliver(1, 100)
puts timmy.report
