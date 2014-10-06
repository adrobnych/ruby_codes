require './mastermind'
require './number_master'


mind = Game.new
puts mind.start
loop do
	puts mind.invite
	users_guess = gets
	nm = NumberMaster.new
	puts nm.analize_guess(users_guess)
	break if nm.game_finish?(users_guess)
end
