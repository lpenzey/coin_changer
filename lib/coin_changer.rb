class Coinchanger
	
	def dispense(change)
		coins = [25, 10, 5, 1]
		coin_array = []
		coins.each do |coin|
			while change >= coin
				coin_array << coin
				change -= coin
			end

		end
		coin_array
	end			
end
	# def dispense(change)
	# 	penny = 1
	# 	nickel = 5
	# 	dime = 10
	# 	quarter = 25
	# 	coin_array = []
	
	# 	while change > 24
	# 		change -=25
	# 		coin_array << quarter
	# 	end	

	# 	while change > 9
	# 		change -=10
	# 		coin_array << dime
	# 	end	
		
	# 	while change > 4
	# 		change -= 5
	# 		coin_array << nickel
	# 	end

	# 	change.times do |i|
	# 		coin_array << penny
	# 	end
	# 	coin_array
	# end
#end