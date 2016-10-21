class Rover

	def initialize(x_coordinate, y_coordinate, direction)
		@x_coordinate = x_coordinate
		@y_coordinate = y_coordinate
		@direction = direction
	end

	def read_instruction(command)
		command.chars.each do |input|
			if input == "M"
				puts "instruct move"
				move
			elsif input == "L"
				puts "instruct turn_left"
				turn_left
			elsif input == "R"
				puts "instruct right_turn"
				turn_right
			else
				puts "error"
			end
			puts "test"
		end
	end

	def move
		puts "test move"
		if @direction == "N"
			@x_coordinate += 1
		elsif @direction == "E"
			@y_coordinate += 1
		elsif @direction == "S"
			@x_coordinate -= 1
		else @direction == "W"
			@y_coordinate -= 1
		end
		puts "#{@x_coordinate}, #{@y_coordinate}"
	end

	def turn_left
			if @direction == "N"
				@direction == "W"
				puts "#{@direction} facing"
			elsif @direction == "E"
				@direction == "N"
				puts "#{@direction} facing"
			elsif @direction == "S"
				@direction == "E"
				puts "#{@direction} facing"
			else @direction == "W"
				@direction == "S"
				puts "#{@direction} facing"
			end
	end

	def turn_right
			if @direction == "N"
				@direction == "E"
				puts "#{@direction} facing"
			elsif @direction == "E"
				@direction == "S"
				puts "#{@direction} facing"
			elsif @direction == "S"
				@direction == "W"
				puts "#{@direction} facing"
			else @direction == "W"
				@direction == "N"
				puts "#{@direction} facing"
			end
	end


end


# puts "What are to boundaries of your grid?"
# x, y = gets.split.map(&:to_i)
# z = z.to_s

puts "what are the X and Y coordinates of your rover?"
x_coordinate, y_coordinate = gets.split.map(&:to_i)

puts "What direction is your rover facing?"
direction = gets.chomp.upcase

puts "moving instructions for rover 1 (L for left, R for right, M for move)?"
instruction = gets.chomp.upcase

# puts "what is the start location of rover 2?"
# location_rover2 = gets.chomp
#
# puts "moving instructions for rover 2?"
# directions_rover2 = gets.chomp

rover1 = Rover.new(x_coordinate, y_coordinate, direction)
rover1.read_instruction(instruction)
