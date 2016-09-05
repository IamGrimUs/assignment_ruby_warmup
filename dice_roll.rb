def dice_roll(number_of_die=1)
	game_rolls = []
	number_of_die.times { |dice_number|
		roll = 1 + rand(6)
		game_rolls << roll
		puts "The dice number #{dice_number} rolled a #{roll}"
	}
	total = 0
	game_rolls.each { |sum|
			total += sum
	}
	puts total
end

dice_roll()