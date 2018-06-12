class Coinchanger
	
	def dispense(change)
		penny = 1
		nickel = 5
		coin_array = []
		while change > 4
			change -= 5
			coin_array << nickel
		end

		change.times do |i|
			coin_array << penny
		end
		
		coin_array
	end

	def other_method
	
	end

end