def dice_outcomes(dice_number, dice_roll_number)
	
	dice_rolling = 0
	number_array = []
	
	while dice_rolling < dice_number
		dice_roll_number.times { |die|
			roll = 1 + rand(6)
			 # puts "#{die} rolled the number #{roll}"
			number_array << roll
		}
		dice_rolling += 1
	end
	
	total = 0
	number_array.each do |index|
	total += index
	end
	puts total
		
	counts = Hash.new(0)
	number_array.each do |number|
  	counts[number] += 1
	end

	counts.sort_by {|key, value| key}.to_h.each_pair {|key, value| 
		puts "#{key}: #{value}"}
	puts counts
end

dice_outcomes(3,100)