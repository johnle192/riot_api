require 'controllers/base_controller'

class GreetingsController < BaseController

  get '/hi' do
    puts "hi there!"
    "Hello world\n"
  end

end
