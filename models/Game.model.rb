class Game

	def initialize(player_1, player_2)
		@player_1 = player_1
		@player_2 = player_2
	end

	def winner
		if @player_1 == @player_2
			return "It's a tie."
		elsif @player_1 == 'rock' && @player_2 != 'paper'
			return 'Player 1 wins.'
		elsif @player_1 == 'scissors' && @player_2 != 'rock'
			return 'Player 1 wins.'
		elsif @player_1 == 'paper' && @player_2 != 'scissors'
			return 'Player 1 wins.'
		else
			return 'Player 2 wins.'
		end
	end
end