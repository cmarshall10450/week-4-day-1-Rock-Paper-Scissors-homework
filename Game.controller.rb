require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/Game.model')

get '/' do
	erb(:welcome)
end

get '/:player_1/:player_2' do
	game = Game.new(params[:player_1], params[:player_2])
	@result = game.winner
	erb(:game)
end