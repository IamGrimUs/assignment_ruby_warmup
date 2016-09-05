def dice_roll(number_of_die=1,number_of_rolls=1)
	total_count = []
	number_of_rolls.times do 
		game_rolls = []
		number_of_die.times { |dice_number|
			roll = 1 + rand(6)
			game_rolls << roll
			# puts "The dice number #{dice_number} rolled a #{roll}"
		}
		total = 0
		game_rolls.each { |sum|
			total += sum
		}
		total_count << total
	end
	# puts total_count
	counts = Hash.new(0)
	total_count.each do |number|
  	counts[number] += 1
	end

	counts.sort_by {|key, value| key}.to_h.each_pair {|key, value|
		puts "#{key}: #{value}"}
	puts counts
end

dice_roll(3,100)