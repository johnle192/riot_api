require 'net/http'
require 'json'

class GetGamesForPlayer

  def self.perform(id)
    # this url needs to be updated
    url = "#{ENV['RIOT_BASE_URL']}/api/lol/na/v1.3/game/by-summoner/#{id}/recent?api_key=#{ENV['RIOT_API_KEY']}"
    uri = URI(url)
    response_body = Net::HTTP.get(uri)
    parsed_body = JSON.parse(response_body)
  end

end
