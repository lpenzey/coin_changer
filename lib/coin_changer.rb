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