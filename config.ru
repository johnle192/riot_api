$LOAD_PATH << File.expand_path('../app', __FILE__)

require './env'
require 'sinatra/base'
require 'controllers/players_controller'
require 'controllers/greetings_controller'

map('/player') { run PlayersController }
map('/') { run GreetingsController }
