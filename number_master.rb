class NumberMaster
	def secret
		"4567"
	end

	def analize_guess guess 
		result = "#{find_positions(guess)} positions, #{find_misplaced(guess) - find_positions(guess)} misplaced"
	end

	def game_finish? guess
		true if find_positions(guess) == 4
	end

	private

	def find_positions guess
		positions = 0
		(0..3).each do |index|
			positions = positions + 1 if guess[index] == secret[index]
		end
		positions
	end

	def find_misplaced guess
		misplaced = 0
		(0..3).each do |guess_index|
			(0..3).each do |secret_index|
				misplaced = misplaced + 1 if guess[guess_index] == secret[secret_index]
			end
		end
		misplaced
	end

end