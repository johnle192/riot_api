require 'interactors/get_player_by_name'
require 'interactors/get_games_for_player'
require 'controllers/base_controller'

class PlayersController < BaseController
  get '/:name' do
    name = params[:name]
    @player_response = GetPlayerByName.perform(name)

    @player_stats = @player_response[name]

    puts @player_response

    erb :players_view
  end

  get '/:name/games' do
    player_response = GetPlayerByName.perform(params[:name])
    player_id = player_response[params[:name]]['id']

    games_response = GetGamesForPlayer.perform(player_id)
    @games = games_response['games']

    html = "<h1> <%= @games %> </h1>"
    erb html
  end
end
