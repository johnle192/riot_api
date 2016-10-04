require 'sinatra/base'

class BaseController < Sinatra::Base
  configure do
    set :root, File.expand_path('app')
  end
end
